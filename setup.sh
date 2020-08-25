#!/bin/sh

#======================================
# Setup taps
#======================================
brew tap 'homebrew/versions'
brew tap 'homebrew/cask-versions'

brew doctor
brew update

#======================================
# Install Tools
#======================================

brew install caskroom/cask/brew-cask
brew install coreutils
brew install direnv
brew install git
brew install node
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
brew install wget
brew install youtube-dl

#======================================
# Install Apps
#======================================

brew cask install appcleaner
brew cask install cyberduck
brew cask install google-chrome
brew cask install gpgtools
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install skitch
brew cask install skype
brew cask install tidal
brew cask install transmission
brew cask install typora
brew cask install vlc

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
git clone https://github.com/nodenv/nodenv-default-packages.git $(nodenv root)/plugins/nodenv-default-packages
git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems
pip3 install neovim
