# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

FROM cimg/base:2022.08

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PG_VER=11.17
ENV PG_MAJOR=11
ENV POSTGRES_HOST_AUTH_METHOD=trust

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
		clang \
		dirmngr \
		gnupg \
		gosu \
		libclang-dev \
		libicu-dev \
		libipc-run-perl \
		libkrb5-dev \
		libldap2-dev \
		liblz4-dev \
		libpam-dev \
		libperl-dev \
		libpython3-dev \
		libreadline-dev \
		libssl-dev \
		libxml2-dev \
		libxslt1-dev \
		llvm \
		llvm-dev \
		locales \
		python3-dev \
		tcl-dev \
		uuid-dev \
	&& \
	rm -rf /var/lib/apt/lists/* && \
	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
	curl -sSL "https://ftp.postgresql.org/pub/source/v${PG_VER}/postgresql-${PG_VER}.tar.gz" | tar -xz && \
	cd postgresql-${PG_VER} && \
	./configure \
		--prefix=/usr/lib/postgresql/$PG_MAJOR \
		--enable-integer-datetimes \
		--enable-thread-safety \
		--enable-tap-tests \
		--with-uuid=e2fs \
		--with-gnu-ld \
		--with-pgport=5432 \
		--with-system-tzdata=/usr/share/zoneinfo \
		--with-includes=/usr/local/include \
		--with-libraries=/usr/local/lib \
		--with-krb5 \
		--with-gssapi \
		--with-ldap \
		--with-pam \
		--with-tcl \
		--with-perl \
		--with-python \
		--with-openssl \
		--with-libxml \
		--with-libxslt \
		--with-icu \
		--with-llvm \
		--with-lz4 \
	&& \
	# we can change from world to world-bin in newer releases
	make world && \
	make install-world

RUN mkdir /docker-entrypoint-initdb.d

ENV PATH /usr/lib/postgresql/$PG_MAJOR/bin:$PATH
ENV PGDATA /var/lib/postgresql/data

RUN useradd postgres -m -s /bin/bash && \
	groupadd --force postgres && \
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
