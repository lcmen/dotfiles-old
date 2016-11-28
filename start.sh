#!/bin/sh

# Update brew
brew doctor
brew update

# Install apps from Brewfile
brew bundle

# Move casks to /Applications
find /opt/homebrew-cask/Caskroom -name '*.app' -maxdepth 3 | while read -r f
do
  rm -rf "/Applications/$(basename "$f")"
  mv -f "$f" /Applications
done

# Asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.1.0
~/.asdf/bin/asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
~/.asdf/bin/asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
~/.asdf/bin/asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

# Ndenv
git clone https://github.com/riywo/ndenv ~/.ndenv
git clone https://github.com/riywo/node-build.git "$(ndenv root)/plugins/node-build"

pip3 install yamllint
