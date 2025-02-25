<?php

namespace App\Notifications;

use App\Enums\RoleEnum;
use App\Models\booking;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class CreateBookingNotification extends Notification
{
    use Queueable;

    private $booking;

    private $roleName;

    /**
     * Create a new notification instance.
     */
    public function __construct(Booking $booking, $roleName)
    {
        $this->booking = $booking;
        $this->roleName = $roleName;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail', 'database'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        switch ($this->roleName) {
            case RoleEnum::CONSUMER:
                return $this->toConsumerMail();
            case RoleEnum::PROVIDER:
                return $this->toProviderMail();
            case RoleEnum::ADMIN:
                return $this->toAdminMail();
        }
    }

    public function toAdminMail(): MailMessage
    {
        return (new MailMessage)
            ->subject("The booking #{$this->booking->booking_id} has been placed")
            ->line('An booking has been placed successfully.')
            ->line('booking Payment Status: '.$this->booking->payment_status)
            ->line('booking Status: '.$this->booking->booking_status->name)
            ->line('Your prompt attention is requested.');
    }

    public function toProviderMail(): MailMessage
    {
        return (new MailMessage)
            ->subject("New booking #{$this->booking->booking_number} from Your Services")
            ->line('Congratulations! A new booking has been received from your Services.')
            ->line('booking Payment Status: '.$this->booking->payment_status)
            ->line('booking Status: '.$this->booking->booking_status->name)
            ->line('Thank you for partnering with us!')
            ->line('If you have any questions, please contact us.');
    }

    public function toConsumerMail(): MailMessage
    {
        return (new MailMessage)
            ->subject("Your booking #{$this->booking->booking_number} Confirmation")
            ->greeting("Hello {$this->booking->consumer->name},")
            ->line("We're excited to confirm your booking #{$this->booking->booking_number}.")
            ->line("booking payment Status: {$this->booking->payment_status}")
            ->line("booking Status: {$this->booking->booking_status->name}")
            ->line('Thank you for choosing us for your service needs.');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        switch ($this->roleName) {
            case RoleEnum::CONSUMER:
                $message = "Your booking has been successfully placed. Booking #{$this->booking->booking_number}. Thank you for choosing us.";
                break;
            case RoleEnum::PROVIDER:
                $message = "A consumer has booking from your services list. Booking #{$this->booking->booking_number}. Please ensure prompt fulfillment.";
                break;
            case RoleEnum::ADMIN:
                $message = "The booking has been placed successfully. Booking #{$this->booking->booking_number}. Your prompt attention is requested.";
                break;
        }

        return [
            'title' => 'Booking has been placed',
            'message' => $message,
            'type' => 'booking',
            'booking_id' => $this->booking->id,
        ];
    }
}
