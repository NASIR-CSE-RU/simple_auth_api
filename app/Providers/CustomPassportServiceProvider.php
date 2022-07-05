<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use League\OAuth2\Server\AuthorizationServer;

class CustomPassportServiceProvider extends \Laravel\Passport\PassportServiceProvider
{

    /**
     * Interviene la instanciación del servidor de autenticación para cambiar el repositorio de tokens JWT
     *
     * @return \League\OAuth2\Server\AuthorizationServer
     * @throws \Illuminate\Contracts\Container\BindingResolutionException
     */
    public function makeAuthorizationServer()
    {
        return new AuthorizationServer(
            $this->app->make(\Laravel\Passport\Bridge\ClientRepository::class),
            $this->app->make(\App\Repository\Passport\CustomAccessTokenRepository::class),  // This!!
            $this->app->make(\Laravel\Passport\Bridge\ScopeRepository::class),
            $this->makeCryptKey('private'),
            app('encrypter')->getKey()
        );
    }
}
