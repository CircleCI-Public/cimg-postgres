#!/usr/bin/env bash

docker build --file 9.6/Dockerfile -t cimg/postgres:9.6.24  -t cimg/postgres:9.6 .
docker build --file 9.6/postgis/Dockerfile -t cimg/postgres:9.6.24-postgis  -t cimg/postgres:9.6-postgis .
docker build --file 10.19/Dockerfile -t cimg/postgres:10.19 -t cimg/postgres:10 .
docker build --file 10.19/postgis/Dockerfile -t cimg/postgres:10.19-postgis -t cimg/postgres:10-postgis .
docker build --file 11.4/Dockerfile -t cimg/postgres:11.4 -t cimg/postgres:11 .
docker build --file 11.4/postgis/Dockerfile -t cimg/postgres:11.4-postgis -t cimg/postgres:11-postgis .
docker build --file 12.9/Dockerfile -t cimg/postgres:12.9 -t cimg/postgres:12 .
docker build --file 12.9/postgis/Dockerfile -t cimg/postgres:12.9-postgis -t cimg/postgres:12-postgis .
docker build --file 13.5/Dockerfile -t cimg/postgres:13.5 -t cimg/postgres:13 .
docker build --file 13.5/postgis/Dockerfile -t cimg/postgres:13.5-postgis -t cimg/postgres:13-postgis .
docker build --file 14.1/Dockerfile -t cimg/postgres:14.1 -t cimg/postgres:14 .
docker build --file 14.1/postgis/Dockerfile -t cimg/postgres:14.1-postgis -t cimg/postgres:14-postgis .
