<?php

return [
    'name' => 'Stripe',
    'slug' => 'stripe',
    'image' => 'modules/stripe/images/logo.png',
    'configs' => [
        'stripe_api_key' => env('STRIPE_API_KEY'),
        'stripe_secret_key' => env('STRIPE_SECRET_KEY'),
        'stripe_webhook_secret_key' => env('STRIPE_WEBHOOK_SECRET_KEY'),
        'stripe_mode' => env('STRIPE_SANDBOX_MOD'),
    ],
    'fields' => [
        'stripe_api_key' => [
            'type' => 'text',
            'label' => 'API Key',
        ],
        'stripe_secret_key' => [
            'type' => 'text',
            'label' => 'Secret Key',
        ],
        'stripe_webhook_secret_key' => [
            'type' => 'text',
            'label' => 'Webhook Secret Key',
        ],
    ],
];
