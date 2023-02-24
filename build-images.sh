#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 15.1/Dockerfile -t cimg/postgres:15.1 -t cimg/postgres:15.1 --platform linux/amd64 .
docker build --file 15.1/postgis/Dockerfile -t cimg/postgres:15.1-postgis -t cimg/postgres:15.1-postgis --platform linux/amd64 .
