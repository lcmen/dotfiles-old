#!/usr/bin/env bash

# Script for controlling redis.
# Usage: `redis.sh {up|down} app_name`

set -e

redis-up() {
  mkdir -p /tmp/redis
  chmod 777 /tmp/redis
  echo "Redis: starting ${app_name} on ${socket_file}"

  docker run \
    --name "${cont_name}" \
    -v "/tmp/redis:/tmp/redis" \
    -d redis \
    redis-server --port 0 --unixsocket "/tmp/redis/${app_name}.sock" --unixsocketperm 777
}

redis-down() {
  docker stop $cont_name
  docker rm $cont_name
}

app_name=$2
cont_name="redis-${app_name}"

case "$1" in
  "up") redis-up $2 ;;
  "down") redis-down $2 ;;
  "list") redis-list ;;
esac
