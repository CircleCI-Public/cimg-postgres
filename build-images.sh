#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.2/Dockerfile -t cimg/postgres:17.2 -t cimg/postgres:17.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.2/postgis/Dockerfile -t cimg/postgres:17.2-postgis -t cimg/postgres:17.2-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.6/Dockerfile -t cimg/postgres:16.6 -t cimg/postgres:16.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.6/postgis/Dockerfile -t cimg/postgres:16.6-postgis -t cimg/postgres:16.6-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.10/Dockerfile -t cimg/postgres:15.10 -t cimg/postgres:15.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.10/postgis/Dockerfile -t cimg/postgres:15.10-postgis -t cimg/postgres:15.10-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.15/Dockerfile -t cimg/postgres:14.15 -t cimg/postgres:14.15 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.15/postgis/Dockerfile -t cimg/postgres:14.15-postgis -t cimg/postgres:14.15-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.18/Dockerfile -t cimg/postgres:13.18 -t cimg/postgres:13.18 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.18/postgis/Dockerfile -t cimg/postgres:13.18-postgis -t cimg/postgres:13.18-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.22/Dockerfile -t cimg/postgres:12.22 -t cimg/postgres:12.22 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.22/postgis/Dockerfile -t cimg/postgres:12.22-postgis -t cimg/postgres:12.22-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.1/Dockerfile -t cimg/postgres:17.1 -t cimg/postgres:17.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 17.1/postgis/Dockerfile -t cimg/postgres:17.1-postgis -t cimg/postgres:17.1-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.5/Dockerfile -t cimg/postgres:16.5 -t cimg/postgres:16.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 16.5/postgis/Dockerfile -t cimg/postgres:16.5-postgis -t cimg/postgres:16.5-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.9/Dockerfile -t cimg/postgres:15.9 -t cimg/postgres:15.9 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 15.9/postgis/Dockerfile -t cimg/postgres:15.9-postgis -t cimg/postgres:15.9-postgis --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.14/Dockerfile -t cimg/postgres:14.14 -t cimg/postgres:14.14 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 14.14/postgis/Dockerfile -t cimg/postgres:14.14-postgis -t cimg/postgres:14.14-postgis --push .
