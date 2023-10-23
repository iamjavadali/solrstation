#!/bin/bash

sed -i "/);/i 'default_phone_region' => 'US'," /var/www/html/config/config.php
sed -i "/);/i 'overwriteprotocol' => 'http'," /var/www/html/config/config.php

sed -i "/);/i 'enable_previews' => true," /var/www/html/config/config.php
sed -i "/);/i 'enabledPreviewProviders' =>" /var/www/html/config/config.php
sed -i "/);/i array (" /var/www/html/config/config.php
sed -i "/);/i 0 => 'OC\\Preview\\Movie'," /var/www/html/config/config.php
sed -i "/);/i 1 => 'OC\\Preview\\PNG'," /var/www/html/config/config.php
sed -i "/);/i 2 => 'OC\\Preview\\JPEG'," /var/www/html/config/config.php
sed -i "/);/i 3 => 'OC\\Preview\\GIF'," /var/www/html/config/config.php
sed -i "/);/i 4 => 'OC\\Preview\\BMP'," /var/www/html/config/config.php
sed -i "/);/i 5 => 'OC\\Preview\\XBitmap'," /var/www/html/config/config.php
sed -i "/);/i 6 => 'OC\\Preview\\MP3'," /var/www/html/config/config.php
sed -i "/);/i 7 => 'OC\\Preview\\MP4'," /var/www/html/config/config.php
sed -i "/);/i 8 => 'OC\\Preview\\TXT'," /var/www/html/config/config.php
sed -i "/);/i 9 => 'OC\\Preview\\MarkDown'," /var/www/html/config/config.php
sed -i "/);/i 10 => 'OC\\Preview\\PDF'," /var/www/html/config/config.php
sed -i "/);/i )," /var/www/html/config/config.php

