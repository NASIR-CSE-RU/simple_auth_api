<?php

namespace App\Http\Controllers\Api\v1\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Repository\Login\ILoginRepository;
use Psr\Http\Message\ServerRequestInterface;

class UserLoginController extends Controller
{
    private $loginRepository;

    public function __construct(ILoginRepository $loginRepository)
    {
        $this->loginRepository = $loginRepository;
    }

    public function login(LoginRequest $loginRequest, ServerRequestInterface $request)
    {
        return $this->loginRepository->issueToken($request);
    }
    public function logout()
    {
        return $this->loginRepository->invalidateToken();
    }

    public function unauthorizeAccess()
    {
        return $this->loginRepository->unauthorize();
    }

    public function csrfToken()
    {
        return $this->loginRepository->getCsrfToken();
    }
}
