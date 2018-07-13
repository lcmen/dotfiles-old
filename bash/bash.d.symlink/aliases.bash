shopt -s expand_aliases

# Bundler
alias bi="bundle install"
alias bl="bundle list"
alias bu="bundle update"
alias be="bundle exec"
alias br="bundle exec gem remove"

# Grunt & nodejs
alias gsu="grunt submod-update"
alias gsum="grunt submod-update --branch=master"

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
alias dbi="drun bundle install"
alias dbe="drun bundle exec"
alias dbr="drun bundle exec gem remove"
alias dbu="drun bundle update"

# Misc
alias flush-dns="dscacheutil -flushcache"
alias https="Python -m SimpleHTTPServer $argv"
alias tags="ctags --extras=+q -n -R ."
alias gif=to-gif
alias vim="mvim -v"

# Nginx
alias proxy-up="~/Code/dotfiles/scripts/proxy.sh up"
alias proxy-down="~/Code/dotfiles/scripts/proxy.sh down"

# Postgres
alias pg-up="~/Code/dotfiles/scripts/postgres.sh up"
alias pg-down="~/Code/dotfiles/scripts/postgres.sh down"
alias pg-cl="~/Code/dotfiles/scripts/postgres.sh cl"

# Redis
alias rd-up="~/Code/dotfiles/scripts/redis.sh up"
alias rd-down="~/Code/dotfiles/scripts/redis.sh down"

# Tmux
alias txj=tmux-join
alias txl="tmux ls"
alias txk=tmux-kill
