FROM wordpress

LABEL "Project"="Wordpress Pi"
LABEL "Author"="Javad Ali"

EXPOSE 80

ENV WORDPRESS_DB_HOST="wordpressdb:3306"
ENV WORDPRESS_DB_USER="admin"
ENV WORDPRESS_DB_PASSWORD="password" 
ENV WORDPRESS_DB_NAME="wordpress"

RUN apt update && apt install unzip -y

COPY custom.ini /usr/local/etc/php/conf.d/custom.ini
COPY wp-config.php /var/www/html/wp-config.php

RUN chown www-data wp-config.php && chgrp www-data wp-config.php


COPY redis-cache.zip /var/www/html/wp-content/plugins/redis-cache.zip


RUN cd /var/www/html/wp-content/plugins/ && unzip redis-cache.zip