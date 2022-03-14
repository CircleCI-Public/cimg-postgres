#!/usr/bin/env bash

docker build --file 9.6/Dockerfile -t cimg/postgres:9.6.24  -t cimg/postgres:9.6 .
docker build --file 9.6/postgis/Dockerfile -t cimg/postgres:9.6.24-postgis  -t cimg/postgres:9.6-postgis .
docker build --file 10.19/Dockerfile -t cimg/postgres:10.19 .
docker build --file 10.19/postgis/Dockerfile -t cimg/postgres:10.19-postgis .
docker build --file 11.14/Dockerfile -t cimg/postgres:11.14 .
docker build --file 11.14/postgis/Dockerfile -t cimg/postgres:11.14-postgis .
docker build --file 12.9/Dockerfile -t cimg/postgres:12.9 .
docker build --file 12.9/postgis/Dockerfile -t cimg/postgres:12.9-postgis .
docker build --file 13.5/Dockerfile -t cimg/postgres:13.5 .
docker build --file 13.5/postgis/Dockerfile -t cimg/postgres:13.5-postgis .
docker build --file 14.1/Dockerfile -t cimg/postgres:14.1 .
docker build --file 14.1/postgis/Dockerfile -t cimg/postgres:14.1-postgis .
