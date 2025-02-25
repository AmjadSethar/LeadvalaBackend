<?php

return [
    'name' => 'Mollie',
    'slug' => 'mollie',
    'image' => 'modules/mollie/images/logo.png',
    'configs' => [
        'mollie_key' => env('MOLLIE_KEY', 'mollie_key'),
        'mollie_webhook_url' => env('MOLLIE_WEBHOOK_URL', 'mollie_webhook_url'),
        'mollie_mode' => env('MOLLIE_MODE', 'sandbox'),
    ],
    'fields' => [
        'mollie_key' => [
            'type' => 'text',
            'label' => 'Mollie Key',
        ],
        'mollie_webhook_url' => [
            'type' => 'text',
            'label' => 'Webhook URL',
        ],
    ],
];
