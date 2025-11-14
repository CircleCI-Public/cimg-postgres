#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.1/Dockerfile -t cimg/postgres:18.1 -t cimg/postgres:18.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 18.1/postgis/Dockerfile -t cimg/postgres:18.1-postgis -t cimg/postgres:18.1-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.7/Dockerfile -t cimg/postgres:17.7 -t cimg/postgres:17.7 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.7/postgis/Dockerfile -t cimg/postgres:17.7-postgis -t cimg/postgres:17.7-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.11/Dockerfile -t cimg/postgres:16.11 -t cimg/postgres:16.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.11/postgis/Dockerfile -t cimg/postgres:16.11-postgis -t cimg/postgres:16.11-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.15/Dockerfile -t cimg/postgres:15.15 -t cimg/postgres:15.15 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.15/postgis/Dockerfile -t cimg/postgres:15.15-postgis -t cimg/postgres:15.15-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.20/Dockerfile -t cimg/postgres:14.20 -t cimg/postgres:14.20 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.20/postgis/Dockerfile -t cimg/postgres:14.20-postgis -t cimg/postgres:14.20-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.23/Dockerfile -t cimg/postgres:13.23 -t cimg/postgres:13.23 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.23/postgis/Dockerfile -t cimg/postgres:13.23-postgis -t cimg/postgres:13.23-postgis --push .
