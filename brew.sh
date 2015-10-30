#!/bin/sh

brew doctor
brew update

brew tap homebrew/services
brew tap universal-ctags/universal-ctags

# Install Tools
brew install ansible
brew install autoconf
brew install autojump
brew install caskroom/cask/brew-cask
brew install cmake
brew install elixir
brew install fish
brew install git
brew install hg
brew install imagemagick
brew install mariadb
brew install memcached
brew install mongodb
brew install nvm
brew install openssl
brew install postgresql
brew install pow
brew install pyenv
brew install pyenv-virtualenv
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
brew install v8
brew install vim
brew install wget
brew install youtube-dl

# Install Cask versions
brew tap caskroom/versions

# Install Apps
brew cask install alfred
brew cask install android-file-transfer
brew cask install appcleaner
brew cask install burn
brew cask install dropbox
brew cask install easysimbl
brew cask install filezilla
brew cask install firefox
brew cask install genymotion
brew cask install google-chrome
brew cask install gpgtools
brew cask install heroku-toolbelt
brew cask install hipchat
brew cask install karabiner
brew cask install keepassx0
brew cask install macvim
brew cask install remote-desktop-connection
brew cask install postico
brew cask install send-to-kindle
brew cask install sequel-pro
brew cask install skitch
brew cask install skype
brew cask install slate
brew cask install sqlitebrowser
brew cask install spotify
brew cask install sublime-text3
brew cask install toggldesktop
brew cask install transmission
brew cask install twitterrific
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
