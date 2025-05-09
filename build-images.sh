#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.5/Dockerfile -t cimg/postgres:17.5 -t cimg/postgres:17.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.5/postgis/Dockerfile -t cimg/postgres:17.5-postgis -t cimg/postgres:17.5-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.9/Dockerfile -t cimg/postgres:16.9 -t cimg/postgres:16.9 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.9/postgis/Dockerfile -t cimg/postgres:16.9-postgis -t cimg/postgres:16.9-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.13/Dockerfile -t cimg/postgres:15.13 -t cimg/postgres:15.13 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.13/postgis/Dockerfile -t cimg/postgres:15.13-postgis -t cimg/postgres:15.13-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.18/Dockerfile -t cimg/postgres:14.18 -t cimg/postgres:14.18 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.18/postgis/Dockerfile -t cimg/postgres:14.18-postgis -t cimg/postgres:14.18-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.21/Dockerfile -t cimg/postgres:13.21 -t cimg/postgres:13.21 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.21/postgis/Dockerfile -t cimg/postgres:13.21-postgis -t cimg/postgres:13.21-postgis --push .
