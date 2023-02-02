FROM php:8.2-apache

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends  \
    locales apt-utils git libicu-dev g++ libpng-dev libxml2-dev libzip-dev libonig-dev libxslt-dev;

# Install PHP extensions
RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_mysql gd opcache intl zip calendar dom mbstring zip gd xsl
RUN pecl install apcu && docker-php-ext-enable apcu

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Clear cache \
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set directory permissions
RUN chown -R 1000:1000 /var/www

WORKDIR /var/www
