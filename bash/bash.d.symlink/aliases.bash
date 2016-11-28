shopt -s expand_aliases

# Bundler
alias bi="bundle install"
alias bl="bundle list"
alias bu=bundle-update
alias be="bundle exec"
alias br=bundle-remove

# Grunt & nodejs
alias gsu="grunt submod-update"
alias gsum="grunt submod-update --branch=master"

# Docker
alias dbd=docker-build
alias dev=docker-eval
alias drun=docker-compose-run
alias dup="docker-compose -f docker-compose.dev.yml up --remove-orphans"
alias dssh=docker-ssh
alias dcl=~/Code/dotfiles/scripts/docker_cleanup.sh

# Misc
alias flush-dns="dscacheutil -flushcache"
alias https="Python -m SimpleHTTPServer $argv"
alias pg-close=~/Code/dotfiles/scripts/pg_close.sh
alias sequel-open=~/Code/dotfiles/scripts/sequel_open.sh
alias tags="ctags --extra=+q -n -R ."
alias vim-update="vim +PluginInstall! +PluginClean +qall"

# Tmux
alias txj=tmux-join
alias txl="tmux ls"
alias txk=tmux-kill
