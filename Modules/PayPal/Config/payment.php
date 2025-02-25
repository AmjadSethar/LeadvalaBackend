<?php

    return [
        'name' => 'PayPal',
        'slug' => 'paypal',
        'image' => 'modules/paypal/images/logo.png',
        'configs' => [
            'paypal_client_id' => env('PAYPAL_CLIENT_ID'),
            'paypal_client_secret' => env('PAYPAL_CLIENT_SECRET'),
            'paypal_webhook_id' => env('PAYPAL_WEBHOOK_ID'),
            'paypal_mode' => env('PAYPAL_MODE'),
        ],
        'fields' => [
            'paypal_mode' => [
                'type' => 'select',
                'label' => 'Select Mode',
                'options' => [
                    '1' => 'Sandbox',
                    '0' => 'Live',
                ],
            ],
            'paypal_client_id' => [
                'type' => 'text',
                'label' => 'Client ID',
            ],
            'paypal_client_secret' => [
                'type' => 'text',
                'label' => 'Client Secret',
            ],
            'paypal_webhook_id' => [
                'type' => 'text',
                'label' => 'Webhook ID',
            ],
        ],
    ];
