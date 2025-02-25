<?php

namespace App\Http\Controllers\API;

use App\Helpers\Helpers;
use App\Http\Controllers\Controller;

class PaymentMethodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['success' => true, 'data' => Helpers::getPaymentMethodList()]);
    }
    
    public function payment_methods()
    {
        return response()->json([
            'success' => true,
            'data' => [
                'cash',
                'paypal',
                'stripe',
                'mollie',
                'razorpay',
            ],
        ]);
    }
    

}
