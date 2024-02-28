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

COPY redis-cache.zip /var/www/html/wp-content/plugins/redis-cache.zip

RUN cd /var/www/html/wp-content/plugins/ && unzip redis-cache.zip

RUN cd /var/www/html/wp-content/plugins/ && chown www-data redis-cache

RUN cd /var/www/html/wp-content/plugins/ && chgrp www-data redis-cache

RUN cd /var/www/html/wp-content/plugins/ && chmod 777 redis-cache

COPY breeze.zip /var/www/html/wp-content/plugins/breeze.zip

RUN cd /var/www/html/wp-content/plugins/ && unzip breeze.zip

RUN cd /var/www/html/wp-content/plugins/ && chown www-data breeze

RUN cd /var/www/html/wp-content/plugins/ && chgrp www-data breeze

RUN cd /var/www/html/wp-content/plugins/ && chmod 777 breeze

COPY add_wp_redis_host.sh /var/www/html/add_wp_redis_host.sh

RUN chmod +x add_wp_redis_host.sh