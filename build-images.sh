#!/usr/bin/env bash

docker build --file 13.4/Dockerfile -t cimg/postgres:13.4 .
docker build --file 13.4/postgis/Dockerfile -t cimg/postgres:13.4-postgis .
