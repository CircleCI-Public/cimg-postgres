#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.7/Dockerfile -t cimg/postgres:18.7 -t cimg/postgres:18.7 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.7/postgis/Dockerfile -t cimg/postgres:18.7-postgis -t cimg/postgres:18.7-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.12/Dockerfile -t cimg/postgres:17.12 -t cimg/postgres:17.12 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.12/postgis/Dockerfile -t cimg/postgres:17.12-postgis -t cimg/postgres:17.12-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.16/Dockerfile -t cimg/postgres:16.16 -t cimg/postgres:16.16 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.16/postgis/Dockerfile -t cimg/postgres:16.16-postgis -t cimg/postgres:16.16-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.20/Dockerfile -t cimg/postgres:15.20 -t cimg/postgres:15.20 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.20/postgis/Dockerfile -t cimg/postgres:15.20-postgis -t cimg/postgres:15.20-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.25/Dockerfile -t cimg/postgres:14.25 -t cimg/postgres:14.25 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.25/postgis/Dockerfile -t cimg/postgres:14.25-postgis -t cimg/postgres:14.25-postgis --push .
