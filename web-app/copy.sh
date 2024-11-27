#!/bin/bash

docker run -d \
--name copy-web-app \
-p 80:80 \
laudaadi/cloudsec:0.1

sleep 2

docker cp copy-web-app:/etc/ .

docker cp copy-web-app:/usr/local/etc/php .
mv php php-conf

docker stop copy-web-app && docker rm copy-web-app
