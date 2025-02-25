<?php

namespace App\Listeners;

use App\Enums\RoleEnum;
use App\Events\AddExtraChargeEvent;
use App\Helpers\Helpers;
use App\Models\User;
use App\Notifications\AddExtraChargeNotification;
use Exception;
use Illuminate\Queue\InteractsWithQueue;

class AddExtraChargeListener
{
    use InteractsWithQueue;

    /**
     * Handle the event.
     */
    public function handle(AddExtraChargeEvent $event)
    {
        try {

            $booking_id = $event->extraCharge->booking_id;
            $booking = Helpers::getBookingById($booking_id);
            if ($booking) {
                $consumer = Helpers::getProviderById($booking->consumer_id);
                if (isset($consumer) && is_null($booking?->parent_id)) {
                    $consumer->notify(new AddExtraChargeNotification($event->extraCharge, RoleEnum::CONSUMER));
                }

                if ($booking->parent_id) {
                    if (isset($booking->provider_id)) {
                        $provider = Helpers::getProviderById($booking->provider_id);
                        $this->sendPushNotification($provider?->fcm_token, $event);
                        $provider->notify(new AddExtraChargeNotification($event->extraCharge, RoleEnum::PROVIDER));
                    }
                } else {
                    foreach ($booking->sub_bookings as $sub_booking) {
                        if (isset($sub_booking->provider_id)) {
                            $provider = Helpers::getProviderById($sub_booking->provider_id);
                            $this->sendPushNotification($provider?->fcm_token, $event);
                            $provider->notify(new AddExtraChargeNotification($event->extraCharge, RoleEnum::PROVIDER));
                        }
                    }
                }

                $admin = User::role(RoleEnum::ADMIN)->first();
                if (isset($admin)) {
                    $this->sendPushNotification($admin?->fcm_token, $event);
                    $admin->notify(new AddExtraChargeNotification($event->extraCharge, RoleEnum::ADMIN));
                }
            }

        } catch (Exception $e) {
            //
        }
    }

    public function sendPushNotification($token, $event)
    {
        $booking_id = $event->extraCharge->booking_id;
        $booking = Helpers::getBookingById($booking_id);
        if ($token) {
            $notification = [
                'message' => [
                    'token' => $token,
                    'notification' => [
                        'title' => "An Extra Charge added on booking #{$booking?->booking_number}",
                        'body' => "{$event?->extraCharge?->total} total amount added per service amout is {$event?->extraCharge?->per_service_amount}",
                        'image' => '',
                    ],
                    'data' => [
                        'click_action' => 'FLUTTER_NOTIFICATION_CLICK',
                        'type' => 'booking',
                        'booking_id' => (string) $event?->extraCharge?->booking_id,
                    ],
                ],
            ];

            Helpers::pushNotification($notification);
        }
    }
}
