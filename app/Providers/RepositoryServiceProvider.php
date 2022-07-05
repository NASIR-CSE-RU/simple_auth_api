<?php

namespace App\Providers;

use App\Repository\Login\ILoginRepository;
use App\Repository\Login\LoginRepository;
use App\Repository\User\IUserRepository;
use App\Repository\User\UserRepository;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app->bind(IUserRepository::class,UserRepository::class);
        $this->app->bind(ILoginRepository::class,LoginRepository::class);
    }
}
