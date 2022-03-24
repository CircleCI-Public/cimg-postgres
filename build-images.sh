#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 11.14/Dockerfile -t cimg/postgres:11.14 .
docker build --file 11.14/postgis/Dockerfile -t cimg/postgres:11.14-postgis .
docker build --file 12.10/Dockerfile -t cimg/postgres:12.10 .
docker build --file 12.10/postgis/Dockerfile -t cimg/postgres:12.10-postgis .
