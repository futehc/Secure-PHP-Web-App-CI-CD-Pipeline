FROM php:8.1-apache
WORKDIR /var/www/html
COPY . .
RUN docker-php-ext-install pdo pdo_mysql
CMD ["apache2-foreground"]
