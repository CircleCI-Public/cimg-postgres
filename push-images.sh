#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker push cimg/postgres:11.14
docker push cimg/postgres:11.14-postgis

docker push cimg/postgres:12.10
docker push cimg/postgres:12.10-postgis
