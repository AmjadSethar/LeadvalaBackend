<?php

return [
    'name' => 'Ccavenue',
    'slug' => 'ccavenue',
    'image' => 'modules/ccavenue/images/logo.png',
    'configs' => [
        'ccavenue_merchant_id' => env('CCAVENUE_MERCHANT_ID'),
        'ccavenue_access_code' => env('CCAVENUE_ACCESS_CODE'),
        'ccavenue_working_key' => env('CCAVENUE_WORKING_KEY'),
        'ccavenue_sandbox_mode' => env('CCAVENUE_SANDBOX_MODE'),
    ],
    'fields' => [
        'ccavenue_sandbox_mode' => [
            'type' => 'select',
            'label' => 'Select Mode',
            'options' => [
                '1' => 'Sandbox',
                '0' => 'Live',
            ],
        ],
        'ccavenue_merchant_id' => [
            'type' => 'text',
            'label' => 'Merchant ID',
        ],
        'ccavenue_access_code' => [
            'type' => 'text',
            'label' => 'Access Code',
        ],
        'ccavenue_working_key' => [
            'type' => 'text',
            'label' => 'Working Key',
        ],
    ],
];
