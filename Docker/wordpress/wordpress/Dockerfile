FROM wordpress

LABEL "Project"="Wordpress Pi"
LABEL "Author"="Javad Ali"

EXPOSE 80

ENV WORDPRESS_DB_HOST="wordpressdb:3306"
ENV WORDPRESS_DB_USER={$dbuser}
ENV WORDPRESS_DB_PASSWORD={$dbpass}
ENV WORDPRESS_DB_NAME={$dbname}

RUN apt update && apt install -y unzip

COPY custom.ini /usr/local/etc/php/conf.d/custom.ini

COPY redis-cache.zip /var/www/html/wp-content/plugins/redis-cache.zip

RUN cd /var/www/html/wp-content/plugins/ && unzip redis-cache.zip && \
    chown -R www-data:www-data redis-cache && \
    chmod -R 775 redis-cache