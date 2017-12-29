#!/usr/bin/env bash

# Script for controlling redis.
# Usage: `redis.sh {up|down} app_name`

redis-up() {
  mkdir -p /tmp/redis

  echo "Redis: starting ${app_name}"

  setsid nohup redis-server /usr/local/etc/redis.conf \
    --port 0 --unixsocket $socket_file > $log_file 2>&1 &

  # Some slepp before exist so process manager like foreman
  # can kill depending services (i.e. sidekiq) first.
  trap "sleep 2 && redis-down ${1} && exit 0" SIGINT SIGTERM

  tail -f ${log_file}
}

redis-down() {
  if [ ! -e $socket_file ]; then
    echo "Redis: ${app_name} is already shut downed"
    exit 0
  fi
  echo "Redis: shuting down ${app_name}"
  redis-cli -s ${socket_file} shutdown
  rm -rf ${socket_file} ${log_file}
}

if (( $# != 2 )); then
  echo "Usage: redis.sh {up|down} app_name"
  exit 1
fi

app_name=$2
socket_file="/tmp/redis/${app_name}.socket"
log_file="/tmp/redis/${app_name}.log"

case "$1" in
  "up") redis-up $2 ;;
  "down") redis-down $2 ;;
esac
