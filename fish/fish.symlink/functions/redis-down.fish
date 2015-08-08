function redis-down --description 'Stop Redis'
  ps aux | grep 'redis' | grep -v 'grep' | awk '{print $2}' | xargs kill -9
end
