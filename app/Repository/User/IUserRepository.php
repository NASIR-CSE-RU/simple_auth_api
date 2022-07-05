<?php

namespace App\Repository\User;


interface IUserRepository
{
    public function getAllUser();
    public function getUser($id);
    public function createUser(array $userInput);
    public function updateUser(array $userInput, $id);
    public function deleteUser($id);
}