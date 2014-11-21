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
alias spotify="osascript ~/.dotfiles/spotify-control/SpotifyControl.scpt"
alias s="spotify start"
alias si="spotify info"
alias sn="spotify next"
alias sp="spotify prev"
alias ss="spotify play/pause && spotify info"
alias sv="spotify volume"
