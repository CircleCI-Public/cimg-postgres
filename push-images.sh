#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker push cimg/postgres:10.22
docker push cimg/postgres:10.22-postgis

docker push cimg/postgres:11.17
docker push cimg/postgres:11.17-postgis

docker push cimg/postgres:12.12
docker push cimg/postgres:12.12-postgis

docker push cimg/postgres:13.8
docker push cimg/postgres:13.8-postgis

docker push cimg/postgres:14.5
docker push cimg/postgres:14.5-postgis
