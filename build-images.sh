#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 15.2/Dockerfile -t cimg/postgres:15.2 -t cimg/postgres:15.2 --platform linux/amd64 .
docker build --file 15.2/postgis/Dockerfile -t cimg/postgres:15.2-postgis -t cimg/postgres:15.2-postgis --platform linux/amd64 .
