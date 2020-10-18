shopt -s expand_aliases

# Bundler
alias bi="bundle install"
alias bl="bundle list"
alias bu="bundle update"
alias be="bundle exec"
alias br="bundle exec gem remove"

# Docker
alias dbd=docker-build
alias dev=docker-eval
alias drun=docker-compose-run
alias dssh=docker-ssh
alias dcl=docker-cleanup

# Docker & bundler
alias dbc="drun -e DISABLE_SPRING=true bundle exec rails c"
alias dbi="drun bundle install"
alias dbe="drun -e DISABLE_SPRING=true bundle exec"
alias dbr="drun bundle exec gem remove"
alias dbu="drun bundle update"

# Misc
alias c="clear"
alias https="${dir}/scripts/server.sh 8000"
alias vim=nvim

# Nginx
alias proxy-up="${dir}/scripts/proxy.sh up"
alias proxy-down="${dir}/scripts/proxy.sh down"

# Postgres
alias pg-up="${dir}/scripts/postgres.sh up"
alias pg-down="${dir}/scripts/postgres.sh down"
alias pg-cl="${dir}/scripts/postgres.sh clean"
alias pg-st="${dir}/scripts/postgres.sh status"

# Redis
alias rd-up="${dir}/scripts/redis.sh up"
alias rd-down="${dir}/scripts/redis.sh down"
alias rd-list="${dir}/scripts/redis.sh list"

# Tmux
alias txj=tmux-join
alias txl="tmux ls"
alias txk=tmux-kill
