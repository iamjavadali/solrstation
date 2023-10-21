FROM nextcloud

LABEL "Project"="NextCloud Pi"
LABEL "Author"="Javad Ali"

COPY nextcloud.ini /usr/local/etc/php/conf.d/nextcloud.ini

ENV MYSQL_PASSWORD="password"
ENV MYSQL_DATABASE="nextcloud"
ENV MYSQL_USER="admin"
ENV MYSQL_HOST="nextcloud_db"
ENV PHP_MEMORY_LIMIT="4G"
ENV PHP_UPLOAD_LIMIT="10G"
ENV PHP_MAX_EXECUTION_TIME="7200"
ENV REDIS_HOST="nextcloud_redis"

ADD config.sh /scripts/config.sh
RUN chmod +x /scripts/config.sh && /scripts/config.sh

Add add.sh /scripts/add.sh
RUN chmod +x /scripts/add.sh