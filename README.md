1. composer install
2. change environment variable in .env
3. import database from database folder
                    Or
    i) php artisan migrate
    ii) php artisan tinker
        >>> factory(\App\User::class , 50)->create()
        
4. php artisan passport:client --password. This will give you Client id , Client Secret.

   e.g What should we name the password grant client? [Laravel Password Grant Client]:
    > Android

    Password grant client created successfully.
    Client ID: 3
    Client secret: Jtqk9xCgz3b91mJUyU0YiP3ivL68sO1unJvhDfC4 
    
5. Client id , Client Secret save inside .env file in vue js app

