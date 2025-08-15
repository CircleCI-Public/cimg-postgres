#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.6/Dockerfile -t cimg/postgres:17.6 -t cimg/postgres:17.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.6/postgis/Dockerfile -t cimg/postgres:17.6-postgis -t cimg/postgres:17.6-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.10/Dockerfile -t cimg/postgres:16.10 -t cimg/postgres:16.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.10/postgis/Dockerfile -t cimg/postgres:16.10-postgis -t cimg/postgres:16.10-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.14/Dockerfile -t cimg/postgres:15.14 -t cimg/postgres:15.14 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.14/postgis/Dockerfile -t cimg/postgres:15.14-postgis -t cimg/postgres:15.14-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.19/Dockerfile -t cimg/postgres:14.19 -t cimg/postgres:14.19 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.19/postgis/Dockerfile -t cimg/postgres:14.19-postgis -t cimg/postgres:14.19-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.22/Dockerfile -t cimg/postgres:13.22 -t cimg/postgres:13.22 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.22/postgis/Dockerfile -t cimg/postgres:13.22-postgis -t cimg/postgres:13.22-postgis --push .
