#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/postgres:13.9
docker push cimg/postgres:13.9-postgis
docker push cimg/postgres:14.6
docker push cimg/postgres:14.6-postgis
docker push cimg/postgres:15.1
docker push cimg/postgres:15.1-postgis
