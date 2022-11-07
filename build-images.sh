#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 12.0/Dockerfile -t cimg/postgres:12.0 -t cimg/postgres:12.0 .
docker build --file 12.0/postgis/Dockerfile -t cimg/postgres:12.0-postgis -t cimg/postgres:12.0-postgis .
docker build --file 15.0/Dockerfile -t cimg/postgres:15.0 -t cimg/postgres:15.0 .
docker build --file 15.0/postgis/Dockerfile -t cimg/postgres:15.0-postgis -t cimg/postgres:15.0-postgis .
