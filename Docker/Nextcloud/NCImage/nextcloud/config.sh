#!/bin/bash

apt update && apt install ffmpeg -y
apt-get update && apt-get install -y libbz2-dev
docker-php-ext-install bz2 -y