#!/bin/sh

git clone https://github.com/allengerysena/cloudsec-skill-test.git

docker run --rm \
-v $PWD/cloudsec-skill-test:/src \
ghcr.io/owasp-noir/noir:latest noir -b /src -u http://localhost --send-proxy http://host.docker.internal:8080

rm -rf cloudsec-skill-test
