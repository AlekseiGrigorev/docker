FROM php:8.4.2-fpm-alpine3.21

RUN apk update
RUN apk upgrade

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install packages 
RUN apk add mc
RUN apk add ncdu
RUN apk add htop
RUN apk add tmux

# Install packages for Authorization
RUN apk add sqlite sqlite-dev sqlite-libs nodejs npm

RUN composer create-project laravel/laravel:11.5.0 opcodesio_log_viewer
WORKDIR opcodesio_log_viewer

# Authorization
RUN composer require laravel/breeze:2.3.0 --dev

RUN composer require opcodesio/log-viewer:3.12.0

COPY ./docker/opcodesio_log_viewer/.env ./

# Authorization
COPY ./docker/opcodesio_log_viewer/log-viewer.php ./config/
RUN touch database/database.sqlite
RUN php artisan breeze:install livewire 
RUN php artisan migrate
RUN php artisan tinker --execute="DB::table('users')->insert(['name' => 'admin', 'email' => 'admin@email.com', 'password' => Hash::make('admin')]);"

RUN php artisan log-viewer:publish

# Authorization
COPY ./docker/opcodesio_log_viewer/auth.php ./routes/
# Menu
COPY ./docker/opcodesio_log_viewer/navigation.blade.php ./resources/views/livewire/layout/

RUN npm install
RUN npm run build

EXPOSE 8000

CMD php artisan serve --host 0.0.0.0