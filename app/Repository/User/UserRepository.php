<?php

namespace App\Repository\User;

use App\Helper\ApiResponseHelper;
use App\Http\Resources\User\UserResource;
use App\Repository\User\IUserRepository;
use App\User;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpFoundation\Response;

class  UserRepository implements IUserRepository
{

    public function getAllUser()
    {
        try {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    false,
                    'User Found',
                    UserResource::collection(User::all())
                ),
                Response::HTTP_OK
            );
        } catch (ModelNotFoundException $modelNotFoundException) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    $modelNotFoundException->getMessage()
                ),
                $modelNotFoundException->getCode()
            );
        }
    }


    public function getUser($id)
    {
        try {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    false,
                    __('response.USER_FOUND'),
                    new UserResource(User::findOrFail($id))
                ),
                Response::HTTP_OK
            );
        } catch (ModelNotFoundException $modelNotFoundException) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    __('response.USER_NOT_FOUND'),
                    $modelNotFoundException->getMessage()
                ),
                Response::HTTP_NOT_FOUND
            );
        }
    }

    public function createUser(array $userInput)
    {

        try {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    false,
                    __('response.USER_CREATE'),
                    new UserResource(User::create($userInput))
                ),
                Response::HTTP_OK
            );
        } catch (ModelNotFoundException $modelNotFoundException) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    __('response.SOMETHING_WRONG'),
                    $modelNotFoundException->getMessage()
                ),
                Response::HTTP_NOT_FOUND
            );
        }
    }

    public function updateUser($userInput, $id)
    {
        try {
            $updateUser = User::findOrFail($id);
            $updateUser->update($userInput);
            return response()->json(
                ApiResponseHelper::apiResponse(
                    false,
                    __('response.USER_UPDATE'),
                    new UserResource($updateUser)
                ),
                Response::HTTP_OK
            );
        } catch (ModelNotFoundException $modelNotFoundException) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    __('response.SOMETHING_WRONG'),
                    $modelNotFoundException->getMessage()
                ),
                Response::HTTP_NOT_FOUND
            );
        }
    }

    public function deleteUser($id)
    {
        try {
            User::findOrFail($id)->delete();
            return response()->json(
                ApiResponseHelper::apiResponse(
                    false,
                    __('response.USER_DELETE')
                ),
                Response::HTTP_OK
            );
        } catch (ModelNotFoundException $modelNotFoundException) {
            return response()->json(
                ApiResponseHelper::apiResponse(
                    true,
                    __('response.SOMETHING_WRONG'),
                    $modelNotFoundException->getMessage()
                ),
                Response::HTTP_NOT_FOUND
            );
        }
    }
}
