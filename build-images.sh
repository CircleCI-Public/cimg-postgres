#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.22/Dockerfile -t cimg/postgres:10.22 .
docker build --file 10.22/postgis/Dockerfile -t cimg/postgres:10.22-postgis .
docker build --file 11.17/Dockerfile -t cimg/postgres:11.17 .
docker build --file 11.17/postgis/Dockerfile -t cimg/postgres:11.17-postgis .
docker build --file 12.12/Dockerfile -t cimg/postgres:12.12 .
docker build --file 12.12/postgis/Dockerfile -t cimg/postgres:12.12-postgis .
docker build --file 13.8/Dockerfile -t cimg/postgres:13.8 .
docker build --file 13.8/postgis/Dockerfile -t cimg/postgres:13.8-postgis .
docker build --file 14.5/Dockerfile -t cimg/postgres:14.5 .
docker build --file 14.5/postgis/Dockerfile -t cimg/postgres:14.5-postgis .
