<?php

namespace App\Http\Requests\Backend;

use Illuminate\Foundation\Http\FormRequest;

class CreateServiceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'phone_number ' => '', // Optional audio file, max 10 MB
            'audio' => 'nullable|file|mimetypes:audio/*', // Optional audio file, max 10 MB
            'type_of_tenant' => 'nullable|string|max:255', // nullable string, max length 255 characters
            'budget' => 'nullable|numeric|min:0', // nullable numeric value, minimum 0
            'service_type' => 'nullable|in:buy,rent,sell',
            'title' => 'required|max:255',
            'category_id' => 'array|required',
            'category_id*' => 'exists:categories,id',
            'type' => 'required|in:fixed,free',
            'provider_id' => 'nullable|exists:users,id',
            'required_servicemen' => 'required|numeric',
            'price' => 'required',
            'discount' => 'numeric',
            'tax_id' => 'required|exists:taxes,id',
            'duration' => 'required',
            'duration_unit' => 'required|in:hours,minutes',
            'service_id' => 'array',
            'service_id*' => 'exists:services,id',
            'country_id' => 'required|exists:countries,id',
            'state_id' => 'required',
            'exists:states,id',
            'city' => 'required|max:255',
            'postal_code' => 'required',
            'alternative_phone' => 'numeric|nullable',
            'alternative_name' => 'string|nullable',
            'area' => 'required|string',
            'address' => 'required',
            'faqs' => 'required|array',
            'per_serviceman_commission' => 'required|numeric|between:0,100',
        ];
    }

    public function messages(): array
    {
        return [
            'provider_id.required' => __('validation.provider_id_required'),
            'service_id.required_if' => __('validation.service_id_required_if'),
            'type' => __('validation.type'),
            'price.required_if' => __('validation.price_required_if'),
        ];
    }
}
