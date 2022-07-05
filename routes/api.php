<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('oauth/login', 'Api\v1\User\UserLoginController@login');
Route::post('oauth/logout', 'Api\v1\User\UserLoginController@logout')->middleware('auth:api');
Route::get('unauthorizeAccess', 'Api\v1\User\UserLoginController@unauthorizeAccess')->name('login');
Route::get('csrfToken', 'Api\v1\User\UserLoginController@csrfToken');


Route::namespace('Api\v1\User')->middleware('auth:api')->group(function () {
    Route::resource('users', 'UserController')->except(['store']);
});

Route::namespace('Api\v1\User')->group(function () {
    Route::resource('users', 'UserController')->only(['store']);
});
