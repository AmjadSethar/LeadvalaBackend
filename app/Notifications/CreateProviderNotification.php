<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class CreateProviderNotification extends Notification
{
    use Queueable;

    private $provider;

    /**
     * Create a new notification instance.
     */
    public function __construct($provider)
    {
        $this->provider = $provider;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['database'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        return (new MailMessage)
            ->line('The introduction to the notification.')
            ->action('Notification Action', url('/'))
            ->line('Thank you for using our application!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        $thumbnail = asset(env('APP_URL').'/admin/images/notification/'.'Icon.png');

        return [
            'title' => 'New Provider registered!',
            'message' => "Exciting News! A new provider, {$this->provider->name}, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.",
            'provider_id' => "{$this->provider->id}",
            'type' => 'provider',
            'thumbnail' => $thumbnail,
        ];
    }
}
