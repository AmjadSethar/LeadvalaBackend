<?php

namespace App\Notifications;

use App\Enums\RoleEnum;
use App\Helpers\Helpers;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class CreateWithdrawRequestNotification extends Notification
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
        $admin = User::role(RoleEnum::ADMIN)->pluck('name')->first();

        return (new MailMessage)
            ->subject("Withdrawal Request from {$provider}")
            ->greeting("Hello {$admin},")
            ->line("A withdrawal request has been submitted by {$provider}.")
            ->line("Requested Amount: {$this->withdrawRequest->amount}")
            ->line("Providers's Message:")
            ->line($this->withdrawRequest->message)
            ->line('Please review and take appropriate action as necessary.');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        //for admin
        $provider = User::where('id', $this->withdrawRequest->provider_id)->pluck('name')->first();
        $symbol = Helpers::getDefaultCurrencySymbol();

        return [
            'title' => 'New Withdraw Request',
            'message' => "A withdrawal request for {$symbol}{$this->withdrawRequest->amount} has been received from a {$provider}.",
            'type' => 'withdraw',
            'withdraw_id' => $this->withdrawRequest->id,
        ];
    }
}
