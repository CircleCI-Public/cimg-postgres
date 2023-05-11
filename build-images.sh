#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 15.3/Dockerfile -t cimg/postgres:15.3 -t cimg/postgres:15.3 --platform linux/amd64 .
docker build --file 15.3/postgis/Dockerfile -t cimg/postgres:15.3-postgis -t cimg/postgres:15.3-postgis --platform linux/amd64 .
docker build --file 14.8/Dockerfile -t cimg/postgres:14.8 -t cimg/postgres:14.8 --platform linux/amd64 .
docker build --file 14.8/postgis/Dockerfile -t cimg/postgres:14.8-postgis -t cimg/postgres:14.8-postgis --platform linux/amd64 .
docker build --file 13.11/Dockerfile -t cimg/postgres:13.11 -t cimg/postgres:13.11 --platform linux/amd64 .
docker build --file 13.11/postgis/Dockerfile -t cimg/postgres:13.11-postgis -t cimg/postgres:13.11-postgis --platform linux/amd64 .
docker build --file 12.15/Dockerfile -t cimg/postgres:12.15 -t cimg/postgres:12.15 --platform linux/amd64 .
docker build --file 12.15/postgis/Dockerfile -t cimg/postgres:12.15-postgis -t cimg/postgres:12.15-postgis --platform linux/amd64 .
docker build --file 11.20/Dockerfile -t cimg/postgres:11.20 -t cimg/postgres:11.20 --platform linux/amd64 .
docker build --file 11.20/postgis/Dockerfile -t cimg/postgres:11.20-postgis -t cimg/postgres:11.20-postgis --platform linux/amd64 .
