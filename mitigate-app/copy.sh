#!/bin/bash

docker run -d \
--name copy-web-app \
-p 80:80 \
laudaadi/cloudsec:0.1

sleep 2

docker cp copy-web-app:/var/www/html/ .
mv html src

docker stop copy-web-app && docker rm copy-web-app
