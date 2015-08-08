function mongo-up --description 'Start Mongo'
  mongod --dbpath /usr/local/var/mongodb --quiet > /dev/null &
end
