<?php

namespace App\Http\Requests\API;

use App\Exceptions\ExceptionHandler;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;

class CalculateCheckoutRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'consumer_id' => ['exists:users,id'],
            'services' => ['array'],
            'services.*.service_id' => ['required', 'exists:services,id'],
            'coupon' => ['nullable', 'exists:coupons,code'],
            'payment_method' => ['required'],
        ];
    }

    public function messages()
    {
        return [
            'services.*.service_id.exists' => __('static.service_id_invalid'),
            'coupon.exists' => __('static.coupon_code_not_found', ['code' => $this->coupon]),
        ];
    }

    public function failedValidation(Validator $validator)
    {
        throw new ExceptionHandler($validator->errors()->first(), 422);
    }
}
