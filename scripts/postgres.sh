#!/usr/bin/env bash

# Script for controlling postgres.
# Usage: `postgres.sh {up|down}`

postgres-up() {
  echo "Postgres ${1}: starting"
  pg_ctlcluster $1 main start
}

postgres-down() {
  echo "Postgres ${1}: shuting down"
  pg_ctlcluster $1 main stop
}

postgres-status() {
  echo "Postgres ${1}: status"
  pg_ctlcluster $1 main status
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
  "up") postgres-up $2 ;;
  "down") postgres-down $2 ;;
  "status") postgres-status $2 ;;
  "clean") postgres-clean $2 ;;
esac
