<?php

namespace App\Http\Requests\Backend;

use Illuminate\Foundation\Http\FormRequest;

class UpdateServiceRequest extends FormRequest
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
            'required_servicemen' => 'required|numeric',
            'provider_id' => ' nullable',
            'price' => 'required_if:type,fixed',
            'type' => 'required',
            'description' => 'required',
            'service_rate' => 'required',
            'duration' => 'required',
            'duration_unit' => 'required',
            'service_id' => 'array|required_if:is_random_related_services,0',
            'per_serviceman_commission' => 'required|numeric|between:0,100',
        ];
    }

    public function messages(): array
    {
        return [
            'provider_id.required' => 'The Provider field is required',
            'type' => 'Please select a service type',
            'price.required_if' => 'The price field is required',
        ];
    }
}
