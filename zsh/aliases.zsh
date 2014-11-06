# Reload zsh config
alias reload!='. ~/.zshrc'

# Directories
alias ..="cd .."
alias cd..="cd .."
alias e="exit"

# Flush dns
alias flushdns="dscacheutil -flushcache"

# Simple HTTP server
alias httpserver="Python -m SimpleHTTPServer"

# Spotify Control
alias s="osascript ~/.dotfiles/spotify-control/SpotifyControl.scpt"
alias sn="osascript ~/.dotfiles/spotify-control/SpotifyControl.scpt next"
alias sp="osascript ~/.dotfiles/spotify-control/SpotifyControl.scpt prev"
