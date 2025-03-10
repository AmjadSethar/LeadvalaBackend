<?php

namespace App\Providers;

use App\Events\AddExtraChargeEvent;
use App\Events\BookingReminderEvent;
use App\Events\CreateBookingEvent;
use App\Events\CreateProviderEvent;
use App\Events\CreateWithdrawRequestEvent;
use App\Events\UpdateBookingStatusEvent;
use App\Events\UpdateServiceProofEvent;
use App\Events\UpdateWithdrawRequestEvent;
use App\Events\VerifyProofEvent;
use App\Listeners\AddExtraChargeListener;
use App\Listeners\BookingReminderListener;
use App\Listeners\CreateBookingListener;
use App\Listeners\CreateProviderListener;
use App\Listeners\CreateWithdrawRequestListener;
use App\Listeners\UpdateBookingStatusListener;
use App\Listeners\UpdateServiceProofListener;
use App\Listeners\UpdateWithdrawRequestListener;
use App\Listeners\VerifyProofListener;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        CreateProviderEvent::class => [
            CreateProviderListener::class,
        ],
        CreateBookingEvent::class => [
            CreateBookingListener::class,
        ],
        CreateWithdrawRequestEvent::class => [
            CreateWithdrawRequestListener::class,
        ],
        UpdateBookingStatusEvent::class => [
            UpdateBookingStatusListener::class,
        ],
        UpdateWithdrawRequestEvent::class => [
            UpdateWithdrawRequestListener::class,
        ],
        AddExtraChargeEvent::class => [
            AddExtraChargeListener::class,
        ],
        VerifyProofEvent::class => [
            VerifyProofListener::class,
        ],
        UpdateServiceProofEvent::class => [
            UpdateServiceProofListener::class,
        ],
        BookingReminderEvent::class => [
            BookingReminderListener::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot() {}

    /**
     * Determine if events and listeners should be automatically discovered.
     *
     * @return bool
     */
    public function shouldDiscoverEvents()
    {
        return false;
    }
}
