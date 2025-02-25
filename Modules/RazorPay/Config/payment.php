<?php

return [
    'name' => 'RazorPay',
    'slug' => 'razorpay',
    'image' => 'modules/razorpay/images/logo.png',
    'configs' => [
        'razorpay_key' => env('RAZORPAY_KEY', 'razorpay_key'),
        'razorpay_secret' => env('RAZORPAY_SECRET', 'razorpay_secret'),
        'razorpay_webhook_secret_key' => env('RAZORPAY_WEBHOOK_SECRET_KEY', 'razorpay_webhook_secret_key'),
        'razorpay_mode' => env('RAZORPAY_MODE', 'sandbox'),
    ],
    'fields' => [
        'razorpay_key' => [
            'type' => 'text',
            'label' => 'RazorPay Key',
        ],
        'razorpay_secret' => [
            'type' => 'text',
            'label' => 'RazorPay Secret',
        ],
        'razorpay_webhook_secret_key' => [
            'type' => 'text',
            'label' => 'Webhook Secret Key',
        ],
    ],

];
