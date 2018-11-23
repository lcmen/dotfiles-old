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

brew install caskroom/cask/brew-cask
brew install coreutils
brew install git
brew install neovim
brew install openssl
brew install petere/postgresql/postgresql@9.2
brew install petere/postgresql/postgresql@9.6
brew install petere/postgresql/postgresql@10
brew install postrgresql-common
brew install reattach-to-user-namespace --with-wrap-pbcopy-and-pbpaste
brew install redis
brew install the_silver_searcher
brew install tig
brew install tmux
brew install tree
brew install wget
brew install youtube-dl

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
brew cask install --appdir="/Applications" --force tidal
brew cask install --appdir="/Applications" --force transmission
brew cask install --appdir="/Applications" --force virtualbox
brew cask install --appdir="/Applications" --force vlc
