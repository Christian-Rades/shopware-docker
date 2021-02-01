#!/usr/bin/env bash

checkParameter
cd /var/www/html/"${SHOPWARE_PROJECT}"/ || exit
composer install -o
php /var/www/html/"${SHOPWARE_PROJECT}"/bin/console sw:migration:migrate --mode=update
clearCache
