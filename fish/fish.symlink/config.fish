# Setup encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Default text editor
set EDITOR vim

# Base16 Shell
eval sh $HOME/.config/fish/themes/base16-railscasts.dark.sh

# Set default ruby version for scripts (ripper-tags, etc.)
# by looking at .ruby-version file
cat ~/.ruby-version | read ruby
set RUBY $ruby

# Set Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# Clear path
set -gx PATH

# Add local binstubs to path
set -gx PATH $PATH .bin
set -gx PATH $PATH ./node_modules/.bin

# Add Brew to path
set -gx PATH $PATH /usr/local/sbin /usr/local/bin

# Heroku
set -gx PATH $PATH /usr/local/heroku/bin

# Firefox
set -gx PATH $PATH /opt/homebrew-cask/Caskroom/firefox/latest/Firefox.app/Contents/MacOS

# Sets necessary PATH defaults
set -gx PATH $PATH /usr/bin /bin /usr/sbin /sbin

# Add NVM
# set -x NVM_DIR ~/.nvm
# source ~/.config/fish/nvm-wrapper/nvm.fish
# bass source ~/.nvm/nvm.sh

# Add Ndenv
bass 'export PATH="$HOME/.ndenv/bin:$PATH" && eval "$(ndenv init -)"'

# Rbenv
status --is-interactive; and . (rbenv init -|psub)

# Add iOS devices
set ip4 FFA20AC8-4526-455F-8060-8424EF187D44
set ip5 75D00EFA-BD73-4109-833A-7B774D302585
set ip5s EF7FB715-8BAE-43AB-8374-2904D02C380D
set ip6 A7458111-B55F-4835-8029-BDFAF33E1B82
set ip6p 5349A389-3EAF-4649-B37C-30EDBA98148C
set ip6s 1D3207A4-DB7E-4826-9364-31CDB73F9F88
set ip6sp E93DB656-116B-4448-BB07-E653050AF5FC
