#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 12.13/Dockerfile -t cimg/postgres:12.13 -t cimg/postgres:12.13 --platform linux/amd64 .
docker build --file 12.13/postgis/Dockerfile -t cimg/postgres:12.13-postgis -t cimg/postgres:12.13-postgis --platform linux/amd64 .
docker build --file 11.18/Dockerfile -t cimg/postgres:11.18 -t cimg/postgres:11.18 --platform linux/amd64 .
docker build --file 11.18/postgis/Dockerfile -t cimg/postgres:11.18-postgis -t cimg/postgres:11.18-postgis --platform linux/amd64 .
