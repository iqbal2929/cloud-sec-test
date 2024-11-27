#!/bin/sh

docker run -d \
--name web-app \
-p 80:80 \
-v $PWD/custom-file/php.ini:/usr/local/etc/php/php.ini \
laudaadi/cloudsec:0.1
