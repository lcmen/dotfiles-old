function elasticsearch-down --description 'Stop Elasticsearch'
  ps aux | grep 'elasticsearch' | grep -v 'grep' | awk '{print $2}' | xargs kill -9
end
