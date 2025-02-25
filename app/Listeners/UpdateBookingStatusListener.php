<?php

namespace App\Listeners;

use App\Events\UpdateBookingStatusEvent;
use App\Helpers\Helpers;
use App\Notifications\UpdateBookingStatusNotification;
use Exception;

class UpdateBookingStatusListener
{
    /**
     * Handle the event.
     */
    public function handle(UpdateBookingStatusEvent $event)
    {
        try {

            if ($event->booking->consumer_id) {
                $consumer = Helpers::getConsumerById($event->booking->consumer_id);
                if ($consumer) {
                    $this->sendPushNotification($consumer->fcm_token, $event);
                    $consumer->notify(new UpdateBookingStatusNotification($event->booking, $consumer));
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
                        'title' => "Booking status is {$event->booking?->booking_status?->name}",
                        'body' => "Booking Number: #{$event->booking?->booking_number} has been {$event->booking?->booking_status?->name}",
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
