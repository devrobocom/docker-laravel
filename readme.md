# PHP-FPM Docker image for Laravel

Docker image for a php-fpm container crafted to run Laravel based applications.

## Specifications:

* PHP 7.2 / 7.1 / 7.0 / 5.6 / 5.4
* OpenSSL PHP Extension
* PDO PHP Extension
* SOAP PHP Extension
* Mbstring PHP Extension
* Tokenizer PHP Extension
* XML PHP Extension
* PCNTL PHP Extension
* ZIP PHP Extension
* MCRYPT PHP Extension
* GD PHP Extension
* BCMath PHP Extension
* Imagick PHP Extension
* Memcached
* Composer
* Laravel Cron Job for the [task scheduling](https://laravel.com/docs/5.4/scheduling#introduction) setup
* PHP ini values for Laravel (see [`laravel.ini`](laravel.ini))
* xDebug (PHPStorm friendly, see [`xdebug.ini`](xdebug.ini))


**Note:** this image is modified version of https://github.com/Cyber-Duck/php-fpm-laravel/tree/7.2