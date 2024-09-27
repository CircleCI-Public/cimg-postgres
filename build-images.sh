#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.0/Dockerfile -t cimg/postgres:17.0 -t cimg/postgres:17.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.0/postgis/Dockerfile -t cimg/postgres:17.0-postgis -t cimg/postgres:17.0-postgis --push .
