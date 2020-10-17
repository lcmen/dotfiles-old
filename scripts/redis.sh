#!/usr/bin/env bash

# Script for controlling redis.
# Usage: `redis.sh {up|down} app_name`

set -e

redis-up() {
  mkdir -p /tmp/redis

  app_name=$1
  config_file=${2:-/usr/local/etc/redis.conf}
  db_file="${app_name}.rdb"

  echo "Redis: starting ${app_name} with ${config_file} on ${socket_file}"

  redis-server ${config_file} --dbfilename ${db_file} --port 0 --unixsocket ${socket_file} --daemonize yes
}

redis-down() {
  if [ ! -e $socket_file ]; then
    echo "Redis: ${app_name} is already shut downed"
    exit 0
  fi
  echo "Redis: shuting down ${app_name}"
  redis-cli -s ${socket_file} shutdown
  rm -rf ${socket_file}
}

redis-list() {
  printf "Redis apps:\n\n"
  ls /tmp/redis | grep ".socket" | sed -e 's/\.socket//' | sed -e 's/^/- /'
}

if (( $1 != "list" && $# != 2 )); then
  echo "Usage: redis.sh {up|down|list} [app_name]"
  exit 1
fi

app_name=$2
socket_file="/tmp/redis/${app_name}.socket"
log_file="/tmp/redis/${app_name}.log"

case "$1" in
  "up") redis-up $2 ;;
  "down") redis-down $2 ;;
  "list") redis-list ;;
esac
