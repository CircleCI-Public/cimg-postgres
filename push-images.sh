#!/usr/bin/env bash

docker push cimg/postgres:9.6.24
docker push cimg/postgres:9.6
docker push cimg/postgres:9.6.24-postgis
docker push cimg/postgres:9.6-postgis

docker push cimg/postgres:10.19
docker push cimg/postgres:10.19-postgis

docker push cimg/postgres:11.4
docker push cimg/postgres:11.4-postgis

docker push cimg/postgres:12.10
docker push cimg/postgres:12.10-postgis

docker push cimg/postgres:13.5
docker push cimg/postgres:13.5-postgis

docker push cimg/postgres:14.1
docker push cimg/postgres:14.1-postgis
