#!/bin/sh

brew doctor
brew update

brew tap homebrew/services
brew tap homebrew/versions
brew tap universal-ctags/universal-ctags

# Install Tools
brew install caskroom/cask/brew-cask
brew install cmake
brew install elixir
brew install elasticsearch17
brew install git
brew install imagemagick
brew install mariadb
brew install openssl
brew install postgresql
brew install rbenv --HEAD # Latest version works with fish
brew install rbenv-binstubs
brew install rbenv-bundler
brew install rbenv-bundle-exec
brew install rbenv-default-gems
brew install rbenv-gem-rehash
brew install reattach-to-user-namespace
brew install redis
brew install ruby-build
brew install the_silver_searcher
brew install tig
brew install tmux
brew install tree
brew install --HEAD universal-ctags
brew install vim
brew install wget

# Install ndenv
if [ ! -d ~/.ndenv ]; then
  git clone https://github.com/riywo/ndenv ~/.ndenv
fi
# Install node-build plugin for ndenv
if [ ! -d ~/.ndenv/plugins/node-build ]; then
  git clone https://github.com/riywo/node-build.git ~/.ndenv/plugins/node-build
fi

brew tap caskroom/versions

# Install Apps
brew cask install --appdir="/Applications" --force android-file-transfer
brew cask install --appdir="/Applications" --force appcleaner
brew cask install --appdir="/Applications" --force dragondisk
brew cask install --appdir="/Applications" --force dropbox
brew cask install --appdir="/Applications" --force filezilla
brew cask install --appdir="/Applications" --force firefox
brew cask install --appdir="/Applications" --force genymotion
brew cask install --appdir="/Applications" --force google-chrome
brew cask install --appdir="/Applications" --force gpgtools
brew cask install --appdir="/Applications" --force heroku-toolbelt
brew cask install --appdir="/Applications" --force hipchat
brew cask install --appdir="/Applications" --force iterm2
brew cask install --appdir="/Applications" --force karabiner
brew cask install --appdir="/Applications" --force macvim
brew cask install --appdir="/Applications" --force nvalt
brew cask install --appdir="/Applications" --force psequel
brew cask install --appdir="/Applications" --force send-to-kindle
brew cask install --appdir="/Applications" --force sequel-pro
brew cask install --appdir="/Applications" --force skitch
brew cask install --appdir="/Applications" --force skype
brew cask install --appdir="/Applications" --force slate
brew cask install --appdir="/Applications" --force sqlitebrowser
brew cask install --appdir="/Applications" --force spotify
brew cask install --appdir="/Applications" --force toggldesktop
brew cask install --appdir="/Applications" --force transmission
brew cask install --appdir="/Applications" --force twitterrific
brew cask install --appdir="/Applications" --force vagrant
brew cask install --appdir="/Applications" --force virtualbox
brew cask install --appdir="/Applications" --force vlc

# Move casks to /Applications
for f in `find /opt/homebrew-cask/Caskroom -name '*.app' -maxdepth 3`; do
  rm -rf "/Applications/$(basename $f)"
  mf -f "$f" /Applications
done
