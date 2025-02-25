<?php

namespace App\Notifications;

use App\Helpers\Helpers;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class UpdateWithdrawRequestNotification extends Notification
{
    use Queueable;

    private $withdrawRequest;

    /**
     * Create a new notification instance.
     */
    public function __construct($withdrawRequest)
    {
        $this->withdrawRequest = $withdrawRequest;
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
        $provider = User::where('id', $this->withdrawRequest->provider_id)->pluck('name')->first();
        return (new MailMessage)
            ->subject('withdraw Request Status Updated')
            ->greeting('hello '.$provider.',')
            ->line('We would like to inform you that the status of your withdraw request has been updated:')
            ->line('Your withdraw request for '.$this->withdrawRequest->amount.' has been '.$this->withdrawRequest->status.'.')
            ->line('If you require any further assistance, please don’t hesitate to contact us.')
            ->line('Thank you.');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        // for provider
        $symbol = Helpers::getDefaultCurrencySymbol();

        return [
            'title' => "Withdraw Request is {$this->withdrawRequest->status} by admin",
            'message' => "Your withdrawal request for {$symbol}{$this->withdrawRequest->amount} has been {$this->withdrawRequest->status}",
            'type' => 'withdraw',
            'withdraw_id' => $this->withdrawRequest->id,
        ];
    }
}
