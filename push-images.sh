#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/postgres:15.3
docker push cimg/postgres:15.3-postgis
docker push cimg/postgres:14.8
docker push cimg/postgres:14.8-postgis
docker push cimg/postgres:13.11
docker push cimg/postgres:13.11-postgis
docker push cimg/postgres:12.15
docker push cimg/postgres:12.15-postgis
docker push cimg/postgres:11.20
docker push cimg/postgres:11.20-postgis
