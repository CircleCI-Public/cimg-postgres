#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/postgres:12.0
docker push cimg/postgres:12.0-postgis
docker push cimg/postgres:15.0
docker push cimg/postgres:15.0-postgis
