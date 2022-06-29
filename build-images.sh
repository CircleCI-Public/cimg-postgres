#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.21/Dockerfile -t cimg/postgres:10.21 .
docker build --file 10.21/postgis/Dockerfile -t cimg/postgres:10.21-postgis .
docker build --file 11.16/Dockerfile -t cimg/postgres:11.16 .
docker build --file 11.16/postgis/Dockerfile -t cimg/postgres:11.16-postgis .
docker build --file 12.11/Dockerfile -t cimg/postgres:12.11 .
docker build --file 12.11/postgis/Dockerfile -t cimg/postgres:12.11-postgis .
docker build --file 13.7/Dockerfile -t cimg/postgres:13.7 .
docker build --file 13.7/postgis/Dockerfile -t cimg/postgres:13.7-postgis .
docker build --file 14.4/Dockerfile -t cimg/postgres:14.4 .
docker build --file 14.4/postgis/Dockerfile -t cimg/postgres:14.4-postgis .
