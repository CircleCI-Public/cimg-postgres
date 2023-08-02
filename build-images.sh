#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.15/Dockerfile -t cimg/postgres:12.15 -t cimg/postgres:12.15 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.15/postgis/Dockerfile -t cimg/postgres:12.15-postgis -t cimg/postgres:12.15-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.11/Dockerfile -t cimg/postgres:13.11 -t cimg/postgres:13.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.11/postgis/Dockerfile -t cimg/postgres:13.11-postgis -t cimg/postgres:13.11-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.8/Dockerfile -t cimg/postgres:14.8 -t cimg/postgres:14.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.8/postgis/Dockerfile -t cimg/postgres:14.8-postgis -t cimg/postgres:14.8-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.3/Dockerfile -t cimg/postgres:15.3 -t cimg/postgres:15.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.3/postgis/Dockerfile -t cimg/postgres:15.3-postgis -t cimg/postgres:15.3-postgis --push .
