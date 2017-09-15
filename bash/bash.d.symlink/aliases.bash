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

# Docker & bundler
alias dbi="drun bundle install"
alias dbe="drun bundle exec"
alias dbet="drun -e RAILS_ENV=test bundle exec"
alias dbr="drun bundle exec gem remove"
alias dbu="drun bundle update"

# Misc
alias flush-dns="dscacheutil -flushcache"
alias https="Python -m SimpleHTTPServer $argv"
alias pg-close=~/Code/dotfiles/scripts/pg_close.sh
alias sequel-open=~/Code/dotfiles/scripts/sequel_open.sh
alias tags="ctags --extra=+q -n -R ."
alias gif=to-gif

# Tmux
alias txj=tmux-join
alias txl="tmux ls"
alias txk=tmux-kill
