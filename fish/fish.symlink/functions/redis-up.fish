function redis-up --description 'Start Redis'
  redis-server /usr/local/etc/redis.conf > /dev/null &
end
