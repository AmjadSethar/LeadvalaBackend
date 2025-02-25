<?php

namespace App\Listeners;

use App\Enums\RoleEnum;
use App\Events\VerifyProofEvent;
use App\Helpers\Helpers;
use App\Models\User;
use App\Notifications\VerifyProofNotification;
use Exception;
use Illuminate\Queue\InteractsWithQueue;

class UpdateServiceProofListener
{
    use InteractsWithQueue;

    /**
     * Handle the event.
     */
    public function handle(VerifyProofEvent $event)
    {
        try {

            $booking = $event->booking;
            if ($booking) {
                foreach ($booking->sub_orders as $sub_order) {
                    if (isset($sub_order->provider_id)) {
                        $provider = Helpers::getProviderById($sub_order->provider_id);
                        $this->sendPushNotification($provider?->fcm_token, $event);
                        $provider = $provider?->provider;
                        $provider->notify(new VerifyProofNotification($event->booking, RoleEnum::PROVIDER));
                    }
                }

                $admin = User::role(RoleEnum::ADMIN)->first();
                if (isset($admin)) {
                    $this->sendPushNotification($admin?->fcm_token, $event);
                    $admin->notify(new VerifyProofNotification($event->booking, RoleEnum::ADMIN));
                }
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
                        'title' => "Service Proof Updated for Booking #{$event->booking->booking_number}",
                        'body' => 'Your prompt attention is requested to verify the provided proof.',
                        'image' => '',
                    ],
                    'data' => [
                        'booking_id' => (string) $event?->booking?->id,
                        'click_action' => 'FLUTTER_NOTIFICATION_CLICK',
                        'type' => 'booking',
                    ],
                ],
            ];

            Helpers::pushNotification($notification);
        }
    }
}
