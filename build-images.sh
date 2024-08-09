#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.4/Dockerfile -t cimg/postgres:16.4 -t cimg/postgres:16.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.4/postgis/Dockerfile -t cimg/postgres:16.4-postgis -t cimg/postgres:16.4-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.8/Dockerfile -t cimg/postgres:15.8 -t cimg/postgres:15.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.8/postgis/Dockerfile -t cimg/postgres:15.8-postgis -t cimg/postgres:15.8-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.13/Dockerfile -t cimg/postgres:14.13 -t cimg/postgres:14.13 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.13/postgis/Dockerfile -t cimg/postgres:14.13-postgis -t cimg/postgres:14.13-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.16/Dockerfile -t cimg/postgres:13.16 -t cimg/postgres:13.16 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.16/postgis/Dockerfile -t cimg/postgres:13.16-postgis -t cimg/postgres:13.16-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.20/Dockerfile -t cimg/postgres:12.20 -t cimg/postgres:12.20 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.20/postgis/Dockerfile -t cimg/postgres:12.20-postgis -t cimg/postgres:12.20-postgis --push .
