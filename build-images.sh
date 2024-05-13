#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.3/Dockerfile -t cimg/postgres:16.3 -t cimg/postgres:16.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.3/postgis/Dockerfile -t cimg/postgres:16.3-postgis -t cimg/postgres:16.3-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.7/Dockerfile -t cimg/postgres:15.7 -t cimg/postgres:15.7 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.7/postgis/Dockerfile -t cimg/postgres:15.7-postgis -t cimg/postgres:15.7-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.12/Dockerfile -t cimg/postgres:14.12 -t cimg/postgres:14.12 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.12/postgis/Dockerfile -t cimg/postgres:14.12-postgis -t cimg/postgres:14.12-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.15/Dockerfile -t cimg/postgres:13.15 -t cimg/postgres:13.15 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.15/postgis/Dockerfile -t cimg/postgres:13.15-postgis -t cimg/postgres:13.15-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.19/Dockerfile -t cimg/postgres:12.19 -t cimg/postgres:12.19 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.19/postgis/Dockerfile -t cimg/postgres:12.19-postgis -t cimg/postgres:12.19-postgis --push .
