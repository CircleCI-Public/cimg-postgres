# vim:set ft=dockerfile:

FROM cimg/postgres:13.6

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV POSTGIS_VER=3.1.4
RUN apt-get update && apt-get install -y --no-install-recommends \
		libgdal-dev \
		libgeos-dev \
		libjson-c-dev \
		libmysqlclient-dev \
		libproj-dev \
		libprotobuf-c-dev \
		libxml2-dev \
		protobuf-c-compiler \
	&& \
	rm -rf /var/lib/apt/lists/* && \
	curl -sSL "https://download.osgeo.org/postgis/source/postgis-${POSTGIS_VER}.tar.gz" | tar -xz && \
	cd postgis-${POSTGIS_VER} && \
	./configure && \
	make && \
	make install
