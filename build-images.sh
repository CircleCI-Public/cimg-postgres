#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.2/Dockerfile -t cimg/postgres:16.2 -t cimg/postgres:16.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.2/postgis/Dockerfile -t cimg/postgres:16.2-postgis -t cimg/postgres:16.2-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.6/Dockerfile -t cimg/postgres:15.6 -t cimg/postgres:15.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.6/postgis/Dockerfile -t cimg/postgres:15.6-postgis -t cimg/postgres:15.6-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.11/Dockerfile -t cimg/postgres:14.11 -t cimg/postgres:14.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.11/postgis/Dockerfile -t cimg/postgres:14.11-postgis -t cimg/postgres:14.11-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.14/Dockerfile -t cimg/postgres:13.14 -t cimg/postgres:13.14 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.14/postgis/Dockerfile -t cimg/postgres:13.14-postgis -t cimg/postgres:13.14-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.18/Dockerfile -t cimg/postgres:12.18 -t cimg/postgres:12.18 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.18/postgis/Dockerfile -t cimg/postgres:12.18-postgis -t cimg/postgres:12.18-postgis --push .
