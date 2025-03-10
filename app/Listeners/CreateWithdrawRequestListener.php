<?php

namespace App\Listeners;

use App\Enums\RoleEnum;
use App\Events\CreateWithdrawRequestEvent;
use App\Models\User;
use App\Notifications\CreateWithdrawRequestNotification;
use Exception;
use Illuminate\Contracts\Queue\ShouldQueue;

class CreateWithdrawRequestListener
{
    /**
     * Handle the event.
     */
    public function handle(CreateWithdrawRequestEvent $event)
    {
        try {
            $admin = User::role(RoleEnum::ADMIN)->first();
            if (isset($admin)) {
                $admin->notify(new CreateWithdrawRequestNotification($event->withdrawRequest));
            }

        } catch (Exception $e) {
            //
        }
    }
}
