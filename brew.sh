#!/bin/sh

#======================================
# Setup taps
#======================================
brew tap 'caskroom/cask'
brew tap 'caskroom/versions'
brew tap 'homebrew/versions'
brew tap 'universal-ctags/universal-ctags'

brew doctor
brew update

#======================================
# Install Tools
#======================================

# Othr stuff
brew install caskroom/cask/brew-cask
brew install awscli
brew install git
brew install heroku
brew install openssl
brew install reattach-to-user-namespace --with-wrap-pbcopy-and-pbpaste
brew install redis
brew install the_silver_searcher
brew install tig
brew install tmux
brew install tree
brew install wget
brew install universal-ctags --HEAD

#======================================
# Install Apps
#======================================

brew cask install --appdir="/Applications" --force android-file-transfer
brew cask install --appdir="/Applications" --force appcleaner
brew cask install --appdir="/Applications" --force cyberduck
brew cask install --appdir="/Applications" --force dropbox
brew cask install --appdir="/Applications" --force firefox
brew cask install --appdir="/Applications" --force google-chrome
brew cask install --appdir="/Applications" --force gpgtools
brew cask install --appdir="/Applications" --force sequel-pro
brew cask install --appdir="/Applications" --force skitch
brew cask install --appdir="/Applications" --force skype
brew cask install --appdir="/Applications" --force spotify
brew cask install --appdir="/Applications" --force textmate
brew cask install --appdir="/Applications" --force tidal
brew cask install --appdir="/Applications" --force utorrent
brew cask install --appdir="/Applications" --force virtualbox
brew cask install --appdir="/Applications" --force vlc
