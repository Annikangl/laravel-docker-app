FROM php:8.2-fpm-alpine

# Install PHP Extensions (igbinary & memcached)
RUN apk add --no-cache --update libmemcached-libs zlib
RUN set -xe && \
    cd /tmp/ && \
    apk add --no-cache --update --virtual .phpize-deps $PHPIZE_DEPS && \
    apk add --no-cache --update --virtual .memcached-deps zlib-dev libmemcached-dev cyrus-sasl-dev

RUN docker-php-ext-install pdo pdo_mysql

COPY crontab /etc/crontabs/root

WORKDIR /var/www/onerent

CMD ["crond", "-f"]
