<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/',
  'filelocking.enabled' => true,
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'redis' => 
  array (
    'host' => 'redis',
    'password' => '',
    'port' => 6379,
  ),
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'instanceid' => 'oc5ad74o4j4m',
  'passwordsalt' => 'xfdafT5bhYaxABJxdCA0t8smNJXJ26',
  'secret' => '5uKaMFwirNto/Iu65zJ/LXpSXfBfSWbu2nA6CCuI/6wmG6ZL',
  'trusted_domains' => 
  array (
    0 => 'nextcloud.solrstation.com',
    1 => 'solrstation.com',
    2 => '192.168.86.58',
    3 => '192.168.86.58:8080',
    4 => '*.solrstation.com/*',
  ),
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'mysql',
  'version' => '27.1.2.1',
  'dbname' => 'nextcloud',
  'dbhost' => 'nextcloud_db',
  'dbport' => '',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'admin',
  'dbpassword' => 'password',
  'installed' => true,
  'default_phone_region' => 'US',
  'overwriteprotocol' => 'https',
  'memcache.distributed' => '\\OC\\Memcache\\Redis',
  'maintenance' => false,
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
  'updater.secret' => '$2y$10$KE0PySQX8U5qSP4mmWT2bOBkUiBbY5OT2vcyxdcJvxxBER935bP.m',
  'loglevel' => 2,
  'theme' => '',
  'integrity.check.disabled' => true,
);