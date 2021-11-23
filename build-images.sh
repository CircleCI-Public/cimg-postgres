#!/usr/bin/env bash

docker build --file 9.6/Dockerfile -t cimg/postgres:9.6.22  -t cimg/postgres:9.6 .
docker build --file 9.6/postgis/Dockerfile -t cimg/postgres:9.6.22-postgis  -t cimg/postgres:9.6-postgis .
docker build --file 10.17/Dockerfile -t cimg/postgres:10.17 .
docker build --file 10.17/postgis/Dockerfile -t cimg/postgres:10.17-postgis .
docker build --file 10.18/Dockerfile -t cimg/postgres:10.18 .
docker build --file 10.18/postgis/Dockerfile -t cimg/postgres:10.18-postgis .
docker build --file 11.12/Dockerfile -t cimg/postgres:11.12 .
docker build --file 11.12/postgis/Dockerfile -t cimg/postgres:11.12-postgis .
docker build --file 11.13/Dockerfile -t cimg/postgres:11.13 .
docker build --file 11.13/postgis/Dockerfile -t cimg/postgres:11.13-postgis .
docker build --file 12.7/Dockerfile -t cimg/postgres:12.7 .
docker build --file 12.7/postgis/Dockerfile -t cimg/postgres:12.7-postgis .
docker build --file 12.8/Dockerfile -t cimg/postgres:12.8 .
docker build --file 12.8/postgis/Dockerfile -t cimg/postgres:12.8-postgis .
docker build --file 13.3/Dockerfile -t cimg/postgres:13.3 .
docker build --file 13.3/postgis/Dockerfile -t cimg/postgres:13.3-postgis .
docker build --file 13.4/Dockerfile -t cimg/postgres:13.4 .
docker build --file 13.4/postgis/Dockerfile -t cimg/postgres:13.4-postgis .
docker build --file 14.0/Dockerfile -t cimg/postgres:14.0 .
docker build --file 14.0/postgis/Dockerfile -t cimg/postgres:14.0-postgis .
