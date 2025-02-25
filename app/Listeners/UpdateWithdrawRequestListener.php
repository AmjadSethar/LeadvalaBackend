<?php

namespace App\Listeners;

use App\Events\UpdateWithdrawRequestEvent;
use App\Helpers\Helpers;
use App\Models\User;
use App\Notifications\UpdateWithdrawRequestNotification;
use Exception;

class UpdateWithdrawRequestListener
{
    /**
     * Handle the event.
     */
    public function handle(UpdateWithdrawRequestEvent $event): void
    {
        try {

            $provider = User::where('id', $event->withdrawRequest->provider_id)->first();
            if (isset($provider)) {
                $symbol = Helpers::getDefaultCurrencySymbol();
                    $notification = [
                    'message' => [
                        'token' => $provider->fcm_token,
                        'notification' => [
                            'title' => 'Your withdrawal request for'.$symbol.$event->withdrawRequest->amount.'has been '.$event->withdrawRequest->status.'.',
                            'body' => 'If you require any further assistance, please don’t hesitate to contact us.',
                            'image' => '',
                        ],
                        'data' => [
                            'provider_wallet' => (string) $event->withdrawRequest->provider_wallet_id,
                            'click_action' => 'FLUTTER_NOTIFICATION_CLICK',
                            'type' => 'wallet',
                        ],
                    ],
                ];
                Helpers::pushNotification($notification);
                $provider->notify(new UpdateWithdrawRequestNotification($event->withdrawRequest));
            }

        } catch (Exception  $e) {
            //
        }
    }
}
