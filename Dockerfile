FROM php:7-apache

RUN apt-get update &&\
    pecl install xdebug-2.6.0 &&\
    docker-php-ext-enable xdebug &&\
    docker-php-ext-install mysqli &&\
    a2enmod rewrite &&\
    rm -rf /var/lib/apt

COPY ./php.ini /usr/local/etc/php/
