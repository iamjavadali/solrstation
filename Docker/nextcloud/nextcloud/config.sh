#!/bin/bash

apt update
# PHP Module bz2
docker-php-ext-install bz2

# PHP Module imap
apt install libc-client-dev libkrb5-dev -y
docker-php-ext-configure imap --with-kerberos --with-imap-ssl 
docker-php-ext-install imap

# PHP Module gmp
apt install libgmp3-dev -y
docker-php-ext-install gmp

# PHP Module smbclient
apt install smbclient libsmbclient-dev -y
pecl install smbclient 
docker-php-ext-enable smbclient

# ffmpeg
apt install ffmpeg -y

# imagemagick SVG support
apt install libmagickcore-6.q16-6-extra -y

# LibreOffice
apt install libreoffice -y

# CRON via supervisor
apt install supervisor -y
mkdir /var/log/supervisord /var/run/supervisord 

# The following Dockerfile commands are also necessary for a sucessfull cron installation: 
# COPY supervisord.conf /etc/supervisor/supervisord.conf 
# CMD ["/usr/bin/supervisord"]