FROM php:8.0.0RC3-apache

RUN apt-get update && apt-get install -y libicu-dev libonig-dev \
    git \
    unzip \
    zip

RUN docker-php-ext-install intl mbstring pdo pdo_mysql

RUN a2enmod rewrite
