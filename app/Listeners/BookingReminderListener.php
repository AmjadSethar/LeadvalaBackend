<?php

namespace App\Listeners;

use App\Enums\RoleEnum;
use App\Events\BookingReminderEvent;
use App\Helpers\Helpers;
use App\Models\User;
use App\Notifications\BookingReminderNotification;
use Exception;
use Illuminate\Contracts\Queue\ShouldQueue;

class BookingReminderListener implements ShouldQueue
{
    /**
     * Handle the event.
     */
    public function handle(BookingReminderEvent $event)
    {
        try {

            $consumer = $event->booking->consumer;
            if (isset($consumer) && is_null($event->booking->parent_id)) {
                $this->createNotificationPayload($consumer?->fcm_token, $event, RoleEnum::CONSUMER);
                $consumer->notify(new BookingReminderNotification($event->booking, RoleEnum::CONSUMER));
            }

            foreach ($event->booking->sub_bookings as $sub_order) {
                if (isset($sub_order->provider_id)) {
                    $provider = Helpers::getProviderById($sub_order->provider_id);
                    $this->createNotificationPayload($provider?->fcm_token, $event, RoleEnum::PROVIDER);
                    $provider = $provider?->provider;
                    $provider->notify(new BookingReminderNotification($sub_order, RoleEnum::PROVIDER));
                }
            }

            $admin = User::role(RoleEnum::ADMIN)->first();
            if (isset($admin)) {
                $this->createNotificationPayload($admin?->fcm_token, $event, RoleEnum::ADMIN);
                $admin->notify(new BookingReminderNotification($event->booking, RoleEnum::ADMIN));
            }

        } catch (Exception $e) {

            //
        }
    }

    protected function createNotificationPayload($token, $event, $role)
    {
        $title = '';
        $body = '';

        switch ($role) {
            case 'admin':
                $title = 'New Booking Scheduled';
                $body = "A consumer has scheduled a new booking #{$event->booking->booking_number}. Please review the booking details.";
                break;
            case 'provider':
                $title = 'Reminder: Upcoming Booking Today';
                $body = "You have a booking scheduled for today. Booking #{$event->booking->booking_number}. Please be prepared.";
                break;
            case 'user':
                $title = 'Reminder: Your Booking Today';
                $body = "This is a reminder for your booking today. Booking #{$event->booking->booking_number}. Please be ready.";
                break;
        }

        if ($token) {
            $notification = [
                'message' => [
                    'token' => $token,
                    'notification' => [
                        'title' => $title,
                        'body' => $body,
                        'image' => '',
                    ],
                    'data' => [
                        'click_action' => 'FLUTTER_NOTIFICATION_CLICK',
                        'type' => 'booking',
                        'booking_id' => (string) $event?->booking?->id,

                    ],
                ],
            ];

            Helpers::pushNotification($notification);
        }
    }
}
