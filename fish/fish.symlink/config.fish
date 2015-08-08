# Default text editor
set EDITOR vim

# Set Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# Clear path
set -gx PATH

# Add local binstubs to path
set -gx PATH $PATH .bin

# Add Brew to path
set -gx PATH $PATH /usr/local/sbin /usr/local/bin

# Add NVM
set -x NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish

# Add Rbenv
set -gx PATH $PATH $HOME/.rbenv/bin
set -gx PATH $PATH $HOME/.rbenv/shims
rbenv init - | source

# Heroku
set -gx PATH $PATH /usr/local/heroku/bin

# Sets necessary PATH defaults
set -gx PATH $PATH /usr/bin /bin /usr/sbin /sbin
