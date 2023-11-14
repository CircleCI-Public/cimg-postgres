#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.1/Dockerfile -t cimg/postgres:16.1 -t cimg/postgres:16.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.1/postgis/Dockerfile -t cimg/postgres:16.1-postgis -t cimg/postgres:16.1-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.5/Dockerfile -t cimg/postgres:15.5 -t cimg/postgres:15.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.5/postgis/Dockerfile -t cimg/postgres:15.5-postgis -t cimg/postgres:15.5-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.10/Dockerfile -t cimg/postgres:14.10 -t cimg/postgres:14.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.10/postgis/Dockerfile -t cimg/postgres:14.10-postgis -t cimg/postgres:14.10-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.13/Dockerfile -t cimg/postgres:13.13 -t cimg/postgres:13.13 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.13/postgis/Dockerfile -t cimg/postgres:13.13-postgis -t cimg/postgres:13.13-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.17/Dockerfile -t cimg/postgres:12.17 -t cimg/postgres:12.17 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.17/postgis/Dockerfile -t cimg/postgres:12.17-postgis -t cimg/postgres:12.17-postgis --push .
