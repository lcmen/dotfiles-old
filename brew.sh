#!/bin/sh

brew doctor
brew update

brew tap homebrew/versions
brew tap universal-ctags/universal-ctags

# Install Tools
brew install caskroom/cask/brew-cask
brew install automake
brew install autoconf
brew install docker
brew install docker-compose
brew install docker-machine
brew install docker-machine-driver-xhyve
brew install git
brew install openssl
brew install reattach-to-user-namespace
brew install the_silver_searcher
brew install tig
brew install tmux
brew install tree
brew install --HEAD universal-ctags
brew install vim
brew install wget
brew install xhyve

brew tap caskroom/versions

# Install Apps
brew cask install --appdir="/Applications" --force android-file-transfer
brew cask install --appdir="/Applications" --force appcleaner
brew cask install --appdir="/Applications" --force dragondisk
brew cask install --appdir="/Applications" --force dropbox
brew cask install --appdir="/Applications" --force filezilla
brew cask install --appdir="/Applications" --force genymotion
brew cask install --appdir="/Applications" --force google-chrome
brew cask install --appdir="/Applications" --force gpgtools
brew cask install --appdir="/Applications" --force hipchat
brew cask install --appdir="/Applications" --force psequel
brew cask install --appdir="/Applications" --force send-to-kindle
brew cask install --appdir="/Applications" --force sequel-pro
brew cask install --appdir="/Applications" --force skitch
brew cask install --appdir="/Applications" --force skype
brew cask install --appdir="/Applications" --force slate
brew cask install --appdir="/Applications" --force spotify
brew cask install --appdir="/Applications" --force toggldesktop
brew cask install --appdir="/Applications" --force transmission
brew cask install --appdir="/Applications" --force twitterrific
brew cask install --appdir="/Applications" --force virtualbox
brew cask install --appdir="/Applications" --force vlc

# Move casks to /Applications
find /opt/homebrew-cask/Caskroom -name '*.app' -maxdepth 3 | while read f
do
  rm -rf "/Applications/$(basename "$f")"
  mv -f "$f" /Applications
done
