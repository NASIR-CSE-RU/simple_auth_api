<?php

namespace App\Repository\Login;

use App\Helper\ApiResponseHelper;
use App\Http\Resources\User\UserResource;
use App\Repository\Login\ILoginRepository;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Symfony\Component\HttpFoundation\Response;
use \Laravel\Passport\Http\Controllers\AccessTokenController;
use League\OAuth2\Server\Exception\OAuthServerException;
use Psr\Http\Message\ServerRequestInterface;
use App\User;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class LoginRepository extends AccessTokenController implements ILoginRepository
{
    public function issueToken(ServerRequestInterface $request)
    {
        try {

            $username = $request->getParsedBody()['username'];      //default is :email
            $user = User::where('email', '=', $username)->first();  //get user
            $tokenResponse = parent::issueToken($request);          //generate token
            $content = $tokenResponse->getContent();                //convert response to json string
            $data = json_decode($content, true);                    //convert json to array

            if (isset($data["error"]))
                throw new OAuthServerException('The user credentials were incorrect.', 401, 'invalid_credentials');

            $user = collect(new UserResource($user));
            $user->put('access_token', $data['access_token']);      //add access token to user

            return response()->json(
                ApiResponseHelper::apiResponse(
                    false,
                    'token created successfully',
                    array($user)
                ),
                Response::HTTP_OK
            );
        } catch (ModelNotFoundException $modelNotFoundException) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    'user not found',
                    $modelNotFoundException->getMessage()
                ),
                Response::HTTP_NOT_FOUND
            );                                                      // email not found return error message
        } catch (OAuthServerException $oAuthServerException) {

            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    'invalid credentials',
                    $oAuthServerException->getMessage()
                ),
                $oAuthServerException->getCode()
            );
        } catch (Exception $exception) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    $exception->getMessage()
                ),
                Response::HTTP_INTERNAL_SERVER_ERROR
            );                                                      //return error message
        }
    }

    public function getToken(array $loginCredential)
    {
        try {
            $proxy = Request::create(
                'oauth/token',
                'POST'
            );

            return Route::dispatch($proxy);
        } catch (Exception $exception) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    $exception->getMessage()
                ),
                $exception->getCode()
            );
        }
    }

    public function invalidateToken()
    {
        $user = Auth::user()->token();
        $user->revoke();
        return response()->json(
            ApiResponseHelper::apiResponse(
                false,
                'log out successfully'
            ),
            Response::HTTP_OK
        );
    }

    public function refreshToken($token)
    { }

    public function unauthorize()
    {
        return response()->json(
            ApiResponseHelper::apiResponse(
                true,
                'you are unauthorize to access this resource',
                request()->header('Authorization') ? 'invalid Token' : 'token is not provided in authorization header'
            ),
            Response::HTTP_UNAUTHORIZED
        );
    }

    public function getCsrfToken()
    {
        return response()->json(
            ApiResponseHelper::apiResponse(
                false,
                'csrf token generate successfully',
                csrf_token()
            ),
            Response::HTTP_OK
        );
    }
}
