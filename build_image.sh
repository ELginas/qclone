#!/usr/bin/sh

docker build . -f Dockerfile.arch -t githubrepos-arch --secret id=pass,src=.password
docker build . -f Dockerfile.debian -t githubrepos-debian
docker build . -f Dockerfile.debian-testing -t githubrepos-debian-testing
docker build . -f Dockerfile.ubuntu-24.04 -t githubrepos-ubuntu-24.04