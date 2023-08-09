#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.4/Dockerfile -t cimg/postgres:15.4 -t cimg/postgres:15.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.4/postgis/Dockerfile -t cimg/postgres:15.4-postgis -t cimg/postgres:15.4-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.9/Dockerfile -t cimg/postgres:14.9 -t cimg/postgres:14.9 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.9/postgis/Dockerfile -t cimg/postgres:14.9-postgis -t cimg/postgres:14.9-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.12/Dockerfile -t cimg/postgres:13.12 -t cimg/postgres:13.12 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.12/postgis/Dockerfile -t cimg/postgres:13.12-postgis -t cimg/postgres:13.12-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.16/Dockerfile -t cimg/postgres:12.16 -t cimg/postgres:12.16 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.16/postgis/Dockerfile -t cimg/postgres:12.16-postgis -t cimg/postgres:12.16-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.21/Dockerfile -t cimg/postgres:11.21 -t cimg/postgres:11.21 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.21/postgis/Dockerfile -t cimg/postgres:11.21-postgis -t cimg/postgres:11.21-postgis --push .
