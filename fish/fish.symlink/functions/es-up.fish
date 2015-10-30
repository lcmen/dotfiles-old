function es-up --description 'Start Elasticsearch'
  elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml > /dev/null &
end
