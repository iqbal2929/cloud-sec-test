#!/bin/sh

docker run -d \
--name mitigate-app \
-p 80:80 \
-v $PWD/custom-file/php.ini:/usr/local/etc/php/php.ini \
-v $PWD/custom-file/000-default.conf:/etc/apache2/sites-available/000-default.conf \
-v $PWD/custom-file/000-default.conf:/etc/apache2/sites-enabled/000-default.conf \
-v $PWD/src:/var/www/html2 \
laudaadi/cloudsec:0.1
