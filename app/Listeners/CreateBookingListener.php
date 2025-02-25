<?php

namespace App\Listeners;

use Exception;
use App\Models\User;
use App\Enums\RoleEnum;
use App\Helpers\Helpers;
use App\Events\CreateBookingEvent;
use Illuminate\Queue\InteractsWithQueue;
use App\Notifications\CreateBookingNotification;

class CreateBookingListener
{
    use InteractsWithQueue;

    /**
     * Handle the event.
     */
    public function handle(CreateBookingEvent $event)
    {
        try {

            $consumer = $event->booking->consumer;
            if (isset($consumer) && is_null($event->booking->parent_id)) {
                $consumer->notify(new CreateBookingNotification($event->booking, RoleEnum::CONSUMER));
            }

            if ($event->booking->provider_id) {
                $provider = Helpers::getProviderById($event->booking->provider_id);
                $this->sendPushNotification($provider?->fcm_token, $event);
                $provider->notify(new CreateBookingNotification($event->booking, RoleEnum::PROVIDER));
            }

            $admin = User::role(RoleEnum::ADMIN)->first();
            if (isset($admin)) {
                $this->sendPushNotification($admin?->fcm_token, $event);
                $admin->notify(new CreateBookingNotification($event->booking, RoleEnum::ADMIN));
            }

        } catch (Exception $e) {

            //
        }
    }

    public function sendPushNotification($token, $event)
    {
        if ($token) {
            $notification = [
                'message' => [
                    'token' => $token,
                    'notification' => [
                        'title' => "An booking #{$event->booking?->booking_number} has been placed",
                        'body' => 'Congratulations! A new booking has been received.',
                        'image' => "",
                    ],
                    'data' => [
                        'click_action' => "FLUTTER_NOTIFICATION_CLICK",
                        'type' => "booking",
                        'booking_id' => (string) $event?->booking?->id,
                    ]
                ]
            ];

            Helpers::pushNotification($notification);
        }
    }
}
