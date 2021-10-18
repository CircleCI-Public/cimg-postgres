# vim:set ft=dockerfile:

FROM cimg/base:2021.07

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PG_VER=13.3
ENV PG_MAJOR=13
ENV POSTGRES_HOST_AUTH_METHOD=trust

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
		libreadline-dev \
		gnupg \
		gosu \
		dirmngr \
	&& \
	rm -rf /var/lib/apt/lists/* && \
	curl -sSL "https://ftp.postgresql.org/pub/source/v${PG_VER}/postgresql-${PG_VER}.tar.gz" | tar -xz && \
	cd postgresql-${PG_VER} && \
	./configure --prefix=/usr/lib/postgresql/$PG_MAJOR && \
	make && \
	make install all

RUN mkdir /docker-entrypoint-initdb.d

ENV PATH /usr/lib/postgresql/$PG_MAJOR/bin:$PATH
ENV PGDATA /var/lib/postgresql/data

RUN useradd postgres -m -s /bin/bash && \
	addgroup potsgres && \
	adduser postgres postgres

ENV POSTGRES_DB=circle_test

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat

RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN mkdir -p /var/lib/postgresql && \
	chown -R postgres:postgres /var/lib/postgresql && \
	chown -R postgres:postgres /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
STOPSIGNAL SIGINT
EXPOSE 5432
CMD ["postgres"]
