#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.2/Dockerfile -t cimg/postgres:18.2 -t cimg/postgres:18.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.2/postgis/Dockerfile -t cimg/postgres:18.2-postgis -t cimg/postgres:18.2-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.8/Dockerfile -t cimg/postgres:17.8 -t cimg/postgres:17.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.8/postgis/Dockerfile -t cimg/postgres:17.8-postgis -t cimg/postgres:17.8-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.12/Dockerfile -t cimg/postgres:16.12 -t cimg/postgres:16.12 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.12/postgis/Dockerfile -t cimg/postgres:16.12-postgis -t cimg/postgres:16.12-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.16/Dockerfile -t cimg/postgres:15.16 -t cimg/postgres:15.16 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.16/postgis/Dockerfile -t cimg/postgres:15.16-postgis -t cimg/postgres:15.16-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.21/Dockerfile -t cimg/postgres:14.21 -t cimg/postgres:14.21 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.21/postgis/Dockerfile -t cimg/postgres:14.21-postgis -t cimg/postgres:14.21-postgis --push .
