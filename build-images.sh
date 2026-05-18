#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.4/Dockerfile -t cimg/postgres:18.4 -t cimg/postgres:18.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.4/postgis/Dockerfile -t cimg/postgres:18.4-postgis -t cimg/postgres:18.4-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.10/Dockerfile -t cimg/postgres:17.10 -t cimg/postgres:17.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.10/postgis/Dockerfile -t cimg/postgres:17.10-postgis -t cimg/postgres:17.10-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.14/Dockerfile -t cimg/postgres:16.14 -t cimg/postgres:16.14 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.14/postgis/Dockerfile -t cimg/postgres:16.14-postgis -t cimg/postgres:16.14-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.18/Dockerfile -t cimg/postgres:15.18 -t cimg/postgres:15.18 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.18/postgis/Dockerfile -t cimg/postgres:15.18-postgis -t cimg/postgres:15.18-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.23/Dockerfile -t cimg/postgres:14.23 -t cimg/postgres:14.23 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.23/postgis/Dockerfile -t cimg/postgres:14.23-postgis -t cimg/postgres:14.23-postgis --push .
