#!/usr/bin/env bash

docker build --file 9.6/Dockerfile -t cimg/postgres:9.6.22  -t cimg/postgres:9.6 .
docker build --file 10.17/Dockerfile -t cimg/postgres:10.17 .
docker build --file 11.12/Dockerfile -t cimg/postgres:11.12 .
docker build --file 12.7/Dockerfile -t cimg/postgres:12.7 .
docker build --file 13.3/Dockerfile -t cimg/postgres:13.3 .
