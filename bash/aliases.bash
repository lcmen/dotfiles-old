# Reload zsh config
alias reload!='. ~/.bashrc'

# Directories
alias ..="cd .."
alias cd..="cd .."
alias e="exit"

# Flush dns
alias flushdns="dscacheutil -flushcache"

# Simple HTTP server
alias httpserver="Python -m SimpleHTTPServer"
alias phpserver="php -S 127.0.0.1:3000"

# Bundler
alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

# Datastores
alias mysql-up="mysql.server start"
alias mysql-down="mysql.server stop"
alias mongo-up="mongod --dbpath /usr/local/var/mongodb --quiet > /dev/null &"
alias mongo-down="killall mongod"
alias postgres-up="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postgres-down="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Spotify Control
alias spotify="osascript ~/.dotfiles/spotify-control/SpotifyControl.scpt"
alias s="spotify start"
alias si="spotify info"
alias sn="spotify next"
alias sp="spotify prev"
alias ss="spotify play/pause && spotify info"
alias sv="spotify volume"
