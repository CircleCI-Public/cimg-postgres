#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.6/Dockerfile -t cimg/postgres:18.6 -t cimg/postgres:18.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.6/postgis/Dockerfile -t cimg/postgres:18.6-postgis -t cimg/postgres:18.6-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.11/Dockerfile -t cimg/postgres:17.11 -t cimg/postgres:17.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.11/postgis/Dockerfile -t cimg/postgres:17.11-postgis -t cimg/postgres:17.11-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.15/Dockerfile -t cimg/postgres:16.15 -t cimg/postgres:16.15 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.15/postgis/Dockerfile -t cimg/postgres:16.15-postgis -t cimg/postgres:16.15-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.19/Dockerfile -t cimg/postgres:15.19 -t cimg/postgres:15.19 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.19/postgis/Dockerfile -t cimg/postgres:15.19-postgis -t cimg/postgres:15.19-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.24/Dockerfile -t cimg/postgres:14.24 -t cimg/postgres:14.24 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.24/postgis/Dockerfile -t cimg/postgres:14.24-postgis -t cimg/postgres:14.24-postgis --push .
