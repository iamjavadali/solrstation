#!/bin/bash

sed -i "/);/i 'default_phone_region' => 'US'," /var/www/html/config/config.php
sed -i "/);/i 'overwriteprotocol' => 'https'," /var/www/html/config/config.php
sed -i "/);/r /dev/stdin" /var/www/html/config/config.php <<EOF
'enable_previews' => true,
'enabledPreviewProviders' =>
  array (
    0 => 'OC\\Preview\\Movie',
    1 => 'OC\\Preview\\PNG',
    2 => 'OC\\Preview\\JPEG',
    3 => 'OC\\Preview\\GIF',
    4 => 'OC\\Preview\\BMP',
    5 => 'OC\\Preview\\XBitmap',
    6 => 'OC\\Preview\\MP3',
    7 => 'OC\\Preview\\MP4',
    8 => 'OC\\Preview\\TXT',
    9 => 'OC\\Preview\\MarkDown',
    10 => 'OC\\Preview\\PDF',
  ),
EOF