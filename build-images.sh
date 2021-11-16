#!/usr/bin/env bash

docker build --file 9.6/Dockerfile -t cimg/postgres:9.6.23  -t cimg/postgres:9.6 .
docker build --file 9.6/postgis/Dockerfile -t cimg/postgres:9.6.23-postgis  -t cimg/postgres:9.6-postgis .
docker build --file 13.4/Dockerfile -t cimg/postgres:13.4 .
docker build --file 13.4/postgis/Dockerfile -t cimg/postgres:13.4-postgis .
