#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker push cimg/postgres:10.21
docker push cimg/postgres:10.21-postgis

docker push cimg/postgres:11.16
docker push cimg/postgres:11.16-postgis

docker push cimg/postgres:12.11
docker push cimg/postgres:12.11-postgis

docker push cimg/postgres:13.7
docker push cimg/postgres:13.7-postgis

docker push cimg/postgres:14.4
docker push cimg/postgres:14.4-postgis
