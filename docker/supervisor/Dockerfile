FROM php:8.2

RUN apt-get update && apt-get upgrade -y && apt-get install -y supervisor \
    libmemcached-dev\
    libssl-dev \
    zlib1g-dev


RUN docker-php-ext-install pdo pdo_mysql

RUN mkdir -p /var/log/supervisor

COPY --chown=root:root laravel-worker.conf /etc/supervisor/conf.d/laravel-worker.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
