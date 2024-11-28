#!/bin/sh

docker run --rm \
-v $PWD/src:/src \
ghcr.io/owasp-noir/noir:latest noir -b /src -u http://localhost --send-proxy http://host.docker.internal:8080

