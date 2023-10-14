FROM wordpress

LABEL "Project"="Wordpress Pi"
LABEL "Author"="Javad Ali"

EXPOSE 80

ENV WORDPRESS_DB_HOST="wordpressdb:3306"
ENV WORDPRESS_DB_USER="admin"
ENV WORDPRESS_DB_PASSWORD="password" 
ENV WORDPRESS_DB_NAME="wordpress"

COPY php.ini /usr/local/etc/php/conf.d/php.ini