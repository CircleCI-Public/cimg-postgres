#!/usr/bin/env bash

# set DISABLE_PG_CRON to false if unset
DISABLE_PG_CRON=${DISABLE_PG_CRON:-false}

# if DISABLE_PG_CRON is set to true then exit gracefully
# as the runner has opted not to use pg_cron
if [ "${DISABLE_PG_CRON}" = true ]; then
  exit 0
fi

# use same db as the one from env
dbname="$POSTGRES_DB"

# create custom config
customconf=/etc/postgresql/custom-postgresql.conf
echo "shared_preload_libraries = 'pg_cron'" >> $customconf
echo "cron.database_name = '$dbname'" >> $customconf
chown postgres $customconf
chgrp postgres $customconf

cat /etc/postgresql/custom-postgresql.conf

# include custom config from main config
conf=/var/lib/postgresql/data/postgresql.conf
found=$(grep "include = '$customconf'" $conf)
if [ -z "$found" ]; then
  echo "include = '$customconf'" >> $conf
fi

cat /var/lib/postgresql/data/postgresql.conf | grep shared
cat /var/lib/postgresql/data/postgresql.conf | grep include
