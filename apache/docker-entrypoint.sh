#!/bin/sh
set -e

if [ ! -e piwik.php ]; then
	tar cf - --one-file-system -C /usr/src/piwik . | tar xf -
    cp /config/config.ini.php /var/www/html/config/config.ini.php
	chown -R www-data .
fi

exec "$@"
