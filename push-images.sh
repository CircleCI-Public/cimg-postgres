#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/postgres:12.13
docker push cimg/postgres:12.13-postgis
docker push cimg/postgres:11.18
docker push cimg/postgres:11.18-postgis
