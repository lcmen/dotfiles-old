#!/usr/bin/env bash

# Script for controlling redis.
# Usage: `redis.sh {up|down} app_name`

set -e

redis-up() {
  app_name=$1

  mkdir -p /tmp/redis
  echo "Redis: starting ${app_name} with ${config_file} on ${socket_file}"

  docker run \
    -name "redis-${app_name}" \
    -v "/tmp/redis/${app_name}.socket:/tmp/redis.socket" \
    -d redis redis-server --port 0 --unixsocket /tmp/redis.socket
}

app_name=$2
socket_file="/tmp/redis/${app_name}.socket"
log_file="/tmp/redis/${app_name}.log"

case "$1" in
  "up") redis-up $2 ;;
  "down") redis-down $2 ;;
  "list") redis-list ;;
esac
