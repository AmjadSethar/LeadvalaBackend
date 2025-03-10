<?php

return [
    'name' => 'Paystack',
    'slug' => 'paystack',
    'image' => 'modules/paystack/images/logo.png',
    'configs' => [
        'paystack_public_key' => env('PAYSTACK_PUBLIC_KEY', 'paystack_public_key'),
        'paystack_secret_key' => env('PAYSTACK_SECRET_KEY', 'paystack_secret_key'),
        'paystack_sandbox_mode' => env('PAYSTACK_SANDBOX_MODE', 'true'),
    ],
    'fields' => [
        'paystack_sandbox_mode' => [
            'type' => 'select',
            'label' => 'Select Mode',
            'options' => [
                '1' => 'Sandbox',
                '0' => 'Live',
            ],
        ],
        'paystack_public_key' => [
            'type' => 'text',
            'label' => 'Public Key',
            'default' => 'paystack_public_key',
        ],
        'paystack_secret_key' => [
            'type' => 'text',
            'label' => 'Secret Key',
            'default' => 'paystack_secret_key',
        ],
    ],
];
