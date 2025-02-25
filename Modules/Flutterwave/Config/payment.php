<?php

return [
    'name' => 'Flutterwave',
    'slug' => 'flutterwave',
    'image' => 'modules/flutterwave/images/logo.png',
    'configs' => [
        'flw_public_key' => env('FLW_PUBLIC_KEY'),
        'flw_secret_key' => env('FLW_SECRET_KEY'),
        'flw_secret_hash' => env('FLW_SECRET_HASH'),
        'flw_sandbox_mode' => env('FLW_SANDBOX_MOD'),
    ],
    'fields' => [
        'flw_public_key' => [
            'type' => 'text',
            'label' => 'Public Key',
        ],
        'flw_secret_key' => [
            'type' => 'text',
            'label' => 'Secret Key',
        ],
        'flw_secret_hash' => [
            'type' => 'text',
            'label' => 'Secret Hash',
        ],
    ],

];
