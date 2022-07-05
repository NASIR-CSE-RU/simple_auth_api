<?php

namespace App\Repository\Passport;

use League\OAuth2\Server\Entities\ClientEntityInterface;

class CustomAccessTokenRepository extends \Laravel\Passport\Bridge\AccessTokenRepository
{
    /**
     * {@inheritdoc}
     */
    public function getNewToken(ClientEntityInterface $clientEntity, array $scopes, $userIdentifier = null)
    {
        return new CustomAccessToken($userIdentifier, $scopes);
    }
}
