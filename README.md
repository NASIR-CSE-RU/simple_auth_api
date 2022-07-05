### Project Setup
```sh
    composer install
```
### Database setup

1. change environment variable in .env
2. import database from database folder
                    Or
    ```sh
    php artisan migrate
    ```
    ```sh
    php artisan tinker
        >>> factory(\App\User::class , 50)->create()
    ```

### Generate client

    php artisan passport:client --password

This will give you Client id , Client Secret.

   e.g What should we name the password grant client? [Laravel Password Grant Client]:
    > Android

    Password grant client created successfully.
    Client ID: 3
    Client secret: Jtqk9xCgz3b91mJUyU0YiP3ivL68sO1unJvhDfC4 

### Set Client Secret in Vue App
    
Client id , Client Secret save inside .env file in vue js app

