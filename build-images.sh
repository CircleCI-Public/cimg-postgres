#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.20/Dockerfile -t cimg/postgres:10.20 .
docker build --file 10.20/postgis/Dockerfile -t cimg/postgres:10.20-postgis .
docker build --file 11.15/Dockerfile -t cimg/postgres:11.15 .
docker build --file 11.15/postgis/Dockerfile -t cimg/postgres:11.15-postgis .
docker build --file 13.6/Dockerfile -t cimg/postgres:13.6 .
docker build --file 13.6/postgis/Dockerfile -t cimg/postgres:13.6-postgis .
docker build --file 14.2/Dockerfile -t cimg/postgres:14.2 .
docker build --file 14.2/postgis/Dockerfile -t cimg/postgres:14.2-postgis .
