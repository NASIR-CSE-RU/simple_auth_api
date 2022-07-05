<?php

namespace App\Helper;

class ApiResponseHelper
{
    public static function apiResponse($isError, $message, $content = null)
    {
        return [
            'isError' => $isError,
            'message' => $message,
            ($isError ?  'error' : 'data') => $content
        ];
    }
}
