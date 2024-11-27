#!/bin/sh

git clone https://github.com/allengerysena/cloudsec-skill-test.git

docker run --rm -v $PWD/cloudsec-skill-test:/tmp/scan bearer/bearer:latest-amd64 scan /tmp/scan

rm -rf cloudsec-skill-test
