##Stomatološka Ordinacija

Laravel project

## Installation
**Install the Package Via Composer:**
```shell
$ composer install
```

**Create ENV file:**
Rename .env.example to .env

**Generate App Key:**
```shell
$ php artisan key:generate
```

**Setup ENV file:**
Add Database name:
```shell
DB_DATABASE=stomatoloska_ordinacija
```

**Fill Database:**
```shell
import file stomatoloska_ordinacija.sql to your phpMyAdmin
```

**Or Run migrations:**
```shell
$ php artisan migrate --seed
```

**Start server:**
```shell
$ php artisan serve
```

After you start server type http://localhost:8000 to your browser

**User**
```shell
username: admin@admin.com
password: password
```

## License

Ordinacija is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
