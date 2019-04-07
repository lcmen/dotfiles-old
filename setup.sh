#!/bin/sh

#======================================
# Setup taps
#======================================
brew tap 'caskroom/cask'
brew tap 'caskroom/versions'
brew tap 'homebrew/versions'
brew tap 'petere/postgresql'

brew doctor
brew update

#======================================
# Install Tools
#======================================

brew install anyenv
brew install caskroom/cask/brew-cask
brew install coreutils
brew install direnv
brew install git
brew install neovim
brew install openssl
brew install python3
brew install reattach-to-user-namespace --with-wrap-pbcopy-and-pbpaste
brew install redis
brew install the_silver_searcher
brew install tig
brew install tldr --HEAD
brew install tmux
brew install tree
brew install urlview
brew install wget
brew install youtube-dl

#======================================
# Install Apps
#======================================

brew cask install --appdir="/Applications" --force appcleaner
brew cask install --appdir="/Applications" --force cyberduck
brew cask install --appdir="/Applications" --force enpass
brew cask install --appdir="/Applications" --force firefox
brew cask install --appdir="/Applications" --force gpgtools
brew cask install --appdir="/Applications" --force postman
brew cask install --appdir="/Applications" --force sequel-pro
brew cask install --appdir="/Applications" --force skitch
brew cask install --appdir="/Applications" --force skype
brew cask install --appdir="/Applications" --force tidal
brew cask install --appdir="/Applications" --force transmission
brew cask install --appdir="/Applications" --force typora
brew cask install --appdir="/Applications" --force virtualbox
brew cask install --appdir="/Applications" --force vlc

#======================================
# Setup
#======================================
anyenv init
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

#======================================
# Install Plugins
#======================================
anyenv update
pip3 install neovim
git clone https://github.com/nodenv/nodenv-default-packages.git $(nodenv root)/plugins/nodenv-default-packages
git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems
