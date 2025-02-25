<?php

namespace App\Notifications;

use App\Enums\RoleEnum;
use App\Helpers\Helpers;
use App\Models\ExtraCharge;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class AddExtraChargeNotification extends Notification
{
    use Queueable;

    private $extraCharge;

    private $roleName;

    /**
     * Create a new notification instance.
     */
    public function __construct(ExtraCharge $extraCharge, $roleName)
    {
        $this->extraCharge = $extraCharge;
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
            ->subject("An Extra Charge Added on Booking #{$this->extraCharge->booking_id}")
            ->line('An extra charge has been added to a booking.')
            ->line('Booking ID: '.$this->extraCharge->booking_id)
            ->line('Per Service Amount: '.$this->extraCharge->per_service_amount)
            ->line('Number of Services Done: '.$this->extraCharge->no_service_done)
            ->line('Payment Method: '.$this->extraCharge->payment_method)
            ->line('Payment Status: '.$this->extraCharge->payment_status)
            ->line('Total Amount: '.$this->extraCharge->total)
            ->line('Your prompt attention is requested.');
    }

    public function toProviderMail(): MailMessage
    {
        return (new MailMessage)
            ->subject("Extra Charge Added on Booking #{$this->extraCharge->booking_id}")
            ->line('An extra charge has been added to one of your bookings.')
            ->line('Booking ID: '.$this->extraCharge->booking_id)
            ->line('Per Service Amount: '.$this->extraCharge->per_service_amount)
            ->line('Number of Services Done: '.$this->extraCharge->no_service_done)
            ->line('Payment Method: '.$this->extraCharge->payment_method)
            ->line('Payment Status: '.$this->extraCharge->payment_status)
            ->line('Total Amount: '.$this->extraCharge->total)
            ->line('Thank you for your continued partnership!')
            ->line('If you have any questions, please contact us.');
    }

    public function toConsumerMail(): MailMessage
    {
        $booking = Helpers::getBookingById($this->extraCharge->booking_id);

        return (new MailMessage)
            ->subject("Extra Charge on Your Booking #{$booking?->booking_number}")
            ->greeting("Hello {$booking?->consumer?->name},")
            ->line("An extra charge has been added to your booking #{$this->extraCharge->booking_id}.")
            ->line("Service Amount: {$this->extraCharge->per_service_amount}")
            ->line("Number of Services Done: {$this->extraCharge->no_service_done}")
            ->line("Payment Method: {$this->extraCharge->payment_method}")
            ->line("Payment Status: {$this->extraCharge->payment_status}")
            ->line("Total Amount: {$this->extraCharge->total}")
            ->line('Thank you for your understanding and prompt payment.')
            ->line('If you have any questions, please contact us.');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        $booking = Helpers::getBookingById($this->extraCharge->booking_id);
        switch ($this->roleName) {
            case RoleEnum::CONSUMER:
                $message = "An extra charge has been added to your booking #{$booking?->booking_number}. Total amount: {$this->extraCharge->total}.";
                break;
            case RoleEnum::PROVIDER:
                $message = "An extra charge has been added to booking #{$booking?->booking_number}. Total amount: {$this->extraCharge->total}. Please review.";
                break;
            case RoleEnum::ADMIN:
                $message = "An extra charge has been added to booking #{$booking?->booking_number}. Total amount: {$this->extraCharge->total}. Your prompt attention is requested.";
                break;
        }

        return [
            'title' => 'Extra Charge Added',
            'message' => $message,
            'type' => 'booking',
            'booking_id' => $booking?->id,
        ];
    }
}
