#!/usr/bin/env bash
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
