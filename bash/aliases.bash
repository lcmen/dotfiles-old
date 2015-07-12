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
alias bu="bundle update"
alias br="~/Code/dotfiles/scripts/remove_gem.sh" # bundle remove :)

# Ctags
alias tags="ctags -n ."
alias gem-tags="~/Code/dotfiles/scripts/gemtags.sh"

# Datastores
alias memcached-up="memcached -d"
alias memcached-down="killall memcached"
alias mysql-up="mysql.server start"
alias mysql-down="mysql.server stop"
alias mongo-up="mongod --dbpath /usr/local/var/mongodb --quiet > /dev/null &"
alias mongo-down="killall mongod"
alias postgres-up="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postgres-down="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias redis-up="redis-server /usr/local/etc/redis.conf > /dev/null &"
alias redis-down="killall redis-server"

# Tmux
alias txj="tmux attach-session -t"
alias txl="tmux ls"
alias txk="tmux kill-session -t"
