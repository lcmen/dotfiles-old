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

# Run command against docker web container defined in
# docker-compose.dev.yml file.
#
# Pass -u argument to run as user with current user id
# Pass -e arguments for env variables, ie:
# docker-compose-run -e RAILS_ENV=test bundle exec rake db:migrate
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

docker-port() {
  name=$1
  port=$2

  docker port "${name}" "${port}" | awk -F: '{print $2}'
}

# Open man page for command in preview
manp() {
  cmd=$1
  man -t ${cmd} | open -f -a /Applications/Preview.app
}

# Tmux
tmux-join() {
  tmux attach-session -t $1
}

tmux-kill() {
  tmux kill-session -t $1
}

# Convert movie to gif (it requires `ffmpeg` and `gifsicle` to be installed)
# to-gif $input $output
to-gif() {
  input=$1
  output=$2
  ffmpeg -i ${input} -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > ${output}
}

# https://gist.github.com/thiagoghisi/50c3ba835ea72cdb0318fb3306fd2c76
bluetooth-restart() {
  echo "Restarting bluetooth service..."
  blueutil -p 0 && sleep 1 && blueutil -p 1

  echo "Waiting bluetooth service to be restored..."
  until blueutil -p | grep "1" >/dev/null; do sleep 1; done

  echo "Searching for devices not connected..."
  devices=($(blueutil --paired | grep "not connected" | awk -F '[ ,]' '{print $2}'))
  echo "Found ${#devices[@]} recently paired devices not connected"

  for device in ${devices[@]}; do
      for retry in {1..5}; do
          echo "Trying to connect to ${device} ..."
          if blueutil --connect ${device}; then break; fi
          echo "Failed to connect to ${device}"
          sleep 1
      done
  done
}
