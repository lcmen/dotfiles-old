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
alias dup="docker-compose -f docker-compose.dev.yml up --remove-orphans"
alias ddown="docker-compose -f docker-compose.dev.yml stop"
alias dssh=docker-ssh
alias dcl=docker-cleanup
alias dp=docker-port

# Docker & bundler
alias dbc="drun -e DISABLE_SPRING=true bundle exec rails c"
alias dbi="drun bundle install"
alias dbe="drun -e DISABLE_SPRING=true bundle exec"
alias dbr="drun bundle exec gem remove"
alias dbu="drun bundle update"

# Misc
alias c="clear"
alias flush-dns="dscacheutil -flushcache"
alias https="Python -m SimpleHTTPServer $argv"
alias gif=to-gif
alias vim=nvim

# Nginx
alias proxy-up="~/Code/dotfiles/scripts/proxy.sh up"
alias proxy-down="~/Code/dotfiles/scripts/proxy.sh down"

# Postgres
alias pg-up="~/Code/dotfiles/scripts/postgres.sh up"
alias pg-down="~/Code/dotfiles/scripts/postgres.sh down"
alias pg-cl="~/Code/dotfiles/scripts/postgres.sh clean"
alias pg-st="~/Code/dotfiles/scripts/postgres.sh status"

# Projects
alias p="cd ~/Workspace/personal/src"

# Redis
alias rd-up="~/Code/dotfiles/scripts/redis.sh up"
alias rd-down="~/Code/dotfiles/scripts/redis.sh down"
alias rd-list="~/Code/dotfiles/scripts/redis.sh list"

# Tmux
alias txj=tmux-join
alias txl="tmux ls"
alias txk=tmux-kill
