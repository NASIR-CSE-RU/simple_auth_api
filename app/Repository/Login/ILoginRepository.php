<?php

namespace App\Repository\Login;

use Psr\Http\Message\ServerRequestInterface;

interface ILoginRepository
{
    public function getToken(array $loginCredential);
    public function invalidateToken();
    public function refreshToken($token);
    public function unauthorize();
    public function getCsrfToken();
    public function issueToken(ServerRequestInterface $request);
}
