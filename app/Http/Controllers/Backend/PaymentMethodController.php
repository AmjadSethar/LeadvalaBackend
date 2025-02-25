<?php

namespace App\Http\Controllers\Backend;

use App\Helpers\Helpers;
use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Http\Request;
use Jackiedo\DotenvEditor\Facades\DotenvEditor;
use Nwidart\Modules\Facades\Module;

class PaymentMethodController extends Controller
{
    public function index()
    {
        $paymentMethods = Helpers::getPaymentMethodConfigs();

        return view('backend.payment-methods.index', ['paymentMethods' => $paymentMethods]);
    }

    public function update(Request $request, $payment)
    {

        try {

            $paymentMethods = Helpers::getPaymentMethodConfigs();
            $configs = null;
            foreach ($paymentMethods as $paymentMethod) {
                if ($paymentMethod['slug'] == $payment) {
                    $configs = $paymentMethod;
                }
            }

            if ($configs) {
                foreach ($configs['fields'] as $fieldKey => $fieldAttributes) {
                    $envKey = strtoupper($fieldKey);
                    $newValue = $request->$fieldKey;
                    DotenvEditor::setKey($envKey, $newValue);
                    DotenvEditor::save();
                }

                return to_route('backend.paymentmethods.index');
            }

            return redirect()->back()->with('error', __('static.payment_methods.config_file_not_found'));

        } catch (Exception $e) {

            return redirect()->back()->with('error', __('static.payment_methods.something_went_wrong'));
        }
    }

    public function status(Request $request, $payment)
    {

        try {

            $paymentMethods = Helpers::getPaymentMethodConfigs();
            foreach ($paymentMethods as $paymentMethod) {
                if ($paymentMethod['slug'] == $payment) {
                    if (Module::has($paymentMethod['name'])) {
                        if ((int) $request->status) {
                            Module::enable($paymentMethod['name']);
                        } else {
                            Module::disable($paymentMethod['name']);
                        }

                        return response()->json([
                            'message' => __('static.payment_methods.updated_msg', ['name' => $paymentMethod['name']]),
                            'success' => true,
                        ], 200);
                    }
                }
            }

            return response()->json(['error' => __('static.payment_methods.invalid_msg')], 400);

        } catch (Exception $e) {

            return response()->json(['error' => __('static.something_went_wrong')], 500);
        }
    }
}
