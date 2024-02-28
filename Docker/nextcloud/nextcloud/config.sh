#!/bin/bash

apt update && apt install ffmpeg -y
apt-get update && apt-get install libbz2-dev -y 
docker-php-ext-install bz2