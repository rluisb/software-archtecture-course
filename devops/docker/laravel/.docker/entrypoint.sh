#!/bin/bash

composer install
cp .env.example .env
php artisan key:generate
php artisan config:cache
php artisan migrate
php-fpm
