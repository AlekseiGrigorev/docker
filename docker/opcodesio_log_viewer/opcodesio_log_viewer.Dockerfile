FROM php:8.5.6-fpm-alpine3.22

# Install packages 
RUN apk update && apk add --no-cache curl mc

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR opcodesio_log_viewer

RUN composer create-project laravel/laravel:13.6.0 . && composer require opcodesio/log-viewer:3.24.0

COPY ./docker/opcodesio_log_viewer/.env ./
COPY ./docker/opcodesio_log_viewer/routes/web.php ./routes/web.php

RUN php artisan log-viewer:publish

EXPOSE 8000

CMD php artisan serve --host 0.0.0.0