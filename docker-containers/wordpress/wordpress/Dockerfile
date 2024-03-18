FROM wordpress:latest

LABEL "Project"="Wordpress Pi"
LABEL "Author"="Javad Ali"

EXPOSE 80

ENV WORDPRESS_DB_HOST="wordpressdb:3306"
ENV WORDPRESS_DB_USER="admin"
ENV WORDPRESS_DB_PASSWORD="password"
ENV WORDPRESS_DB_NAME="wordpress"

RUN apt update && apt install -y unzip

COPY custom.ini /usr/local/etc/php/conf.d/custom.ini

COPY redis-cache.zip /var/www/html/wp-content/plugins/redis-cache.zip

RUN cd /var/www/html/wp-content/plugins/ && unzip redis-cache.zip && \
    chown -R www-data:www-data redis-cache && \
    chmod -R 775 redis-cache

COPY updraftplus.zip /var/www/html/wp-content/plugins/updraftplus.zip

RUN cd /var/www/html/wp-content/plugins/ && unzip updraftplus.zip && \
    chown -R www-data:www-data updraftplus && \
    chmod -R 775 updraftplus

COPY wp-rocket.zip /var/www/html/wp-content/plugins/wp-rocket.zip

RUN cd /var/www/html/wp-content/plugins/ && unzip wp-rocket.zip && \
    chown -R www-data:www-data wp-rocket && \
    chmod -R 775 wp-rocket

COPY wp-mail-smtp-pro.zip /var/www/html/wp-content/plugins/wp-mail-smtp-pro.zip

RUN cd /var/www/html/wp-content/plugins/ && unzip wp-mail-smtp-pro.zip && \
    chown -R www-data:www-data wp-mail-smtp-pro && \
    chmod -R 775 wp-mail-smtp-pro