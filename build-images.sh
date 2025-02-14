#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.3/Dockerfile -t cimg/postgres:17.3 -t cimg/postgres:17.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.3/postgis/Dockerfile -t cimg/postgres:17.3-postgis -t cimg/postgres:17.3-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.7/Dockerfile -t cimg/postgres:16.7 -t cimg/postgres:16.7 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.7/postgis/Dockerfile -t cimg/postgres:16.7-postgis -t cimg/postgres:16.7-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.11/Dockerfile -t cimg/postgres:15.11 -t cimg/postgres:15.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.11/postgis/Dockerfile -t cimg/postgres:15.11-postgis -t cimg/postgres:15.11-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.16/Dockerfile -t cimg/postgres:14.16 -t cimg/postgres:14.16 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.16/postgis/Dockerfile -t cimg/postgres:14.16-postgis -t cimg/postgres:14.16-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.19/Dockerfile -t cimg/postgres:13.19 -t cimg/postgres:13.19 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.19/postgis/Dockerfile -t cimg/postgres:13.19-postgis -t cimg/postgres:13.19-postgis --push .
