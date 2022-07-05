<?php

namespace App\Http\Requests;

use App\Helper\ApiResponseHelper;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

class LoginRequest extends FormRequest
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
            'client_id' => ['required'],
            'client_secret' => ['required', 'string'],
            'grant_type' => ['required', 'string'],
            'username' => ['required', 'email'],
            'password' => ['required', 'string'],
        ];
    }
    
    public function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(new JsonResponse(ApiResponseHelper::apiResponse(
            true,
            __('response.VALIDATION'),
            $validator->getMessageBag()
        ), Response::HTTP_OK));
    }
}
