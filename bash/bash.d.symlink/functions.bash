bundle-update() {
  bundle update $1
}

bundle-remove() {
  bundle exec gem remove $@
}

# Build docker image
# docker-build $image-name $ssh-key
docker-build() {
  project_name=$1

  if [ -n "$2" ]; then
    keyname=$2
    cp ~/.ssh/${keyname} id_rsa
  fi

  docker build -f Dockerfile.dev --build-arg GROUP_ID=$(id -g) --build-arg USER_ID=$(id -u) -t ${project_name} .

  if [ -n "$2" ]; then
    rm id_rsa
  fi
}

# Cleanup stopped container and unused images
docker-cleanup() {
  docker ps -a | grep "Exit\|Created" | awk '{print $1}' | xargs docker rm
  docker images | grep "none" | awk '{print $3}' | xargs docker rmi
}

docker-eval() {
  eval $(docker-machine env $1)
}

docker-ssh() {
  docker-machine ssh $1
}

# Run command against docker web container defined in
# docker-compose.dev.yml file.
#
# Pass -u argument to run as user with current user id
# Pass -e arguments for env variables, ie:
# docker-compose-run -e RAILS_ENV test bundle exec rake db:migrate
docker-compose-run() {
  cmd=""
  var=""

  # Parse -e options
  while [[ $# > 0 ]]
  do
  i="$1"
  case $i in
    -e*|--environment*)
      var="${var} -e $2"
      shift
      ;;
    -u*)
      var="${var} -u $(id -u)"
      ;;
    *)
      cmd="${cmd} $1"
      ;;
  esac
  shift
  done

  # Trim whitespaces
  cmd=`echo "${cmd}" | sed 's/^ *//' | sed 's/ *$//'`
  var=`echo "${var}" | sed 's/^ *//' | sed 's/ *$//'`

  # cmd="docker-compose -f docker-compose.dev.yml run --service-ports --rm -u $(id -u) ${var} web ${cmd}"
  cmd="docker-compose -f docker-compose.dev.yml run --service-ports --rm ${var} web ${cmd}"
  echo "Running: ${cmd}"
  eval $cmd
}

tmux-join() {
  tmux attach-session -t $1
}

tmux-kill() {
  tmux kill-session -t $1
}
