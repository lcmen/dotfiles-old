#!/usr/bin/env bash

# Script for controlling postgres.
# Usage: `redis.sh {up|down}`

postgres-up() {
  echo "Postgres: starting"
  pg_ctl -o "-F -p 5432" start
}

postgres-down() {
  echo "Postgres: shuting down"
  pg_ctl stop
}

postgres-clean() {
  if [ -n "$1" ] ; then
    where="where pg_stat_activity.datname = '$1';"
    echo "Postgres: killing all connections to database '$1'"
  else
    where=";"
    echo "Postgres: killing all connections to all databases"
  fi

  cat <<-EOF | psql -U postgres -d postgres
  SELECT pg_terminate_backend(pg_stat_activity.pid)
  FROM pg_stat_activity ${where}
EOF
}

case $1 in
  "up") postgres-up;;
  "down") postgres-down;;
  "cl") postgres-clean $2;;
esac
