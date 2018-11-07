#!/bin/bash

service cron start

if [ -z "$(ls -A /var/www)" ]; then
    cd /var/www
    composer global require laravel/installer
    composer create-project --prefer-dist laravel/laravel .
    chown www-data /var/www/ -R
fi

# Toggle xdebug
if [ "false" == "$XDEBUG" ]; then
    sed -i "s/^/;/" /usr/local/etc/php/conf.d/xdebug.ini
    sed -i "s/^/;/" /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
fi
exec "$@"
