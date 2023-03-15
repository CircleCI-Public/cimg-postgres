#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 11.19/Dockerfile -t cimg/postgres:11.19 -t cimg/postgres:11.19 --platform linux/amd64 .
docker build --file 11.19/postgis/Dockerfile -t cimg/postgres:11.19-postgis -t cimg/postgres:11.19-postgis --platform linux/amd64 .
docker build --file 12.14/Dockerfile -t cimg/postgres:12.14 -t cimg/postgres:12.14 --platform linux/amd64 .
docker build --file 12.14/postgis/Dockerfile -t cimg/postgres:12.14-postgis -t cimg/postgres:12.14-postgis --platform linux/amd64 .
docker build --file 13.10/Dockerfile -t cimg/postgres:13.10 -t cimg/postgres:13.10 --platform linux/amd64 .
docker build --file 13.10/postgis/Dockerfile -t cimg/postgres:13.10-postgis -t cimg/postgres:13.10-postgis --platform linux/amd64 .
docker build --file 14.7/Dockerfile -t cimg/postgres:14.7 -t cimg/postgres:14.7 --platform linux/amd64 .
docker build --file 14.7/postgis/Dockerfile -t cimg/postgres:14.7-postgis -t cimg/postgres:14.7-postgis --platform linux/amd64 .
docker build --file 15.2/Dockerfile -t cimg/postgres:15.2 -t cimg/postgres:15.2 --platform linux/amd64 .
docker build --file 15.2/postgis/Dockerfile -t cimg/postgres:15.2-postgis -t cimg/postgres:15.2-postgis --platform linux/amd64 .
