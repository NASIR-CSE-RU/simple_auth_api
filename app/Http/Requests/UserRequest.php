<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
     * @return array
     */
    public function rules()
    {
        return [
            'name' => ['string', 'required', 'max:199', 'nullable'],

            'email' => $this->method() == 'POST' ?
                ['required', 'email', 'unique:users,email']
                :
                ['sometimes', 'required', 'email', Rule::unique('users', 'email')->ignore(request()->route('user'))],

            'password' => $this->method() == 'POST' ?
                ['required', 'string', 'min:8', 'confirmed'] : ['sometimes', 'required', 'string', 'min:8', 'confirmed'],

            'date_of_birth' => ['required', 'date'],
            'avatar' => ['nullable', 'image', 'mimes:png,jpg']
        ];
    }
}
