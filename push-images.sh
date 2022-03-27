#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker push cimg/postgres:10.20
docker push cimg/postgres:10.20-postgis

docker push cimg/postgres:11.15
docker push cimg/postgres:11.15-postgis

docker push cimg/postgres:13.6
docker push cimg/postgres:13.6-postgis

docker push cimg/postgres:14.2
docker push cimg/postgres:14.2-postgis
