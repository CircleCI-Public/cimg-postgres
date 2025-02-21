#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.4/Dockerfile -t cimg/postgres:17.4 -t cimg/postgres:17.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.4/postgis/Dockerfile -t cimg/postgres:17.4-postgis -t cimg/postgres:17.4-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.8/Dockerfile -t cimg/postgres:16.8 -t cimg/postgres:16.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.8/postgis/Dockerfile -t cimg/postgres:16.8-postgis -t cimg/postgres:16.8-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.12/Dockerfile -t cimg/postgres:15.12 -t cimg/postgres:15.12 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.12/postgis/Dockerfile -t cimg/postgres:15.12-postgis -t cimg/postgres:15.12-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.17/Dockerfile -t cimg/postgres:14.17 -t cimg/postgres:14.17 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.17/postgis/Dockerfile -t cimg/postgres:14.17-postgis -t cimg/postgres:14.17-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.20/Dockerfile -t cimg/postgres:13.20 -t cimg/postgres:13.20 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.20/postgis/Dockerfile -t cimg/postgres:13.20-postgis -t cimg/postgres:13.20-postgis --push .
