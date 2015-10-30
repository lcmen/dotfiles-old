export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Default text editor
set EDITOR vim

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
set -x NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish

# Pyenv
set -x PYENV_ROOT ~/.pyenv
set -gx PATH $PATH $PYENV_ROOT/bin
status --is-interactive; and . (pyenv init - | psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)

# Rbenv
status --is-interactive; and . (rbenv init -|psub)

# Add iOS devices
set ip4 E910C09C-32F6-452D-A571-2EA3B20B15A7
set ip5 E06B3EDB-5BCA-454C-B437-8A7B20349C9C
set ip5s 5D014CB5-EC01-4E1D-810A-FB17AA3FAA12
set ip6 807FA9E8-D6B8-4A88-84C9-CD09DC7F4539
set ip6p 21A2CB8F-E10E-472E-B2C4-EE3FD061605F
