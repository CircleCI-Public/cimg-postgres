#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.1/Dockerfile -t cimg/postgres:17.1 -t cimg/postgres:17.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.1/postgis/Dockerfile -t cimg/postgres:17.1-postgis -t cimg/postgres:17.1-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.5/Dockerfile -t cimg/postgres:16.5 -t cimg/postgres:16.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.5/postgis/Dockerfile -t cimg/postgres:16.5-postgis -t cimg/postgres:16.5-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.9/Dockerfile -t cimg/postgres:15.9 -t cimg/postgres:15.9 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.9/postgis/Dockerfile -t cimg/postgres:15.9-postgis -t cimg/postgres:15.9-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.14/Dockerfile -t cimg/postgres:14.14 -t cimg/postgres:14.14 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.14/postgis/Dockerfile -t cimg/postgres:14.14-postgis -t cimg/postgres:14.14-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.17/Dockerfile -t cimg/postgres:13.17 -t cimg/postgres:13.17 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.17/postgis/Dockerfile -t cimg/postgres:13.17-postgis -t cimg/postgres:13.17-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.21/Dockerfile -t cimg/postgres:12.21 -t cimg/postgres:12.21 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.21/postgis/Dockerfile -t cimg/postgres:12.21-postgis -t cimg/postgres:12.21-postgis --push .
