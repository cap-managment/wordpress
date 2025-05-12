# You can change this to a different version of Wordpress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:6.8.1-php8.1-apache
RUN apt-get update \
    && apt-get install -y \
        vim

RUN apt-get update && apt-get install -y magic-wormhole git

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
