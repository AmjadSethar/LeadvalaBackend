<?php

return [
    'name' => 'Sslcommerz',
    'slug' => 'sslcommerz',
    'image' => 'modules/sslcommerz/images/logo.png',
    'configs' => [
        'sslc_store_id' => env('SSLC_STORE_ID', 'sslc_store_id'),
        'sslc_store_password' => env('SSLC_STORE_PASSWORD', 'sslc_store_password'),
        'sslc_sandbox_mode' => env('SSLC_SANDBOX_MODE', 'true'),
    ],
    'fields' => [
        'sslc_sandbox_mode' => [
            'type' => 'select',
            'label' => 'Select Mode',
            'options' => [
                '1' => 'Sandbox',
                '0' => 'Live',
            ],
        ],
        'sslc_store_id' => [
            'type' => 'text',
            'label' => 'Store ID',
        ],
        'sslc_store_password' => [
            'type' => 'text',
            'label' => 'Store Password',
        ],
    ],

];
