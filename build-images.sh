#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 13.9/Dockerfile -t cimg/postgres:13.9 -t cimg/postgres:13.9 .
docker build --file 13.9/postgis/Dockerfile -t cimg/postgres:13.9-postgis -t cimg/postgres:13.9-postgis .
docker build --file 14.6/Dockerfile -t cimg/postgres:14.6 -t cimg/postgres:14.6 .
docker build --file 14.6/postgis/Dockerfile -t cimg/postgres:14.6-postgis -t cimg/postgres:14.6-postgis .
docker build --file 15.1/Dockerfile -t cimg/postgres:15.1 -t cimg/postgres:15.1 .
docker build --file 15.1/postgis/Dockerfile -t cimg/postgres:15.1-postgis -t cimg/postgres:15.1-postgis .
