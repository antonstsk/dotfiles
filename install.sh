#!/usr/bin/env bash

# Getting fresh version
which -s brew
if [[ $? != 0 ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  brew update
  brew upgrade
fi

# Updating tools & installing devtools
brew install imagemagick
brew install composer
brew install openssh
brew install grep
brew install vim
brew install nvm
brew install php
brew install git
brew install zsh

# Switching to zsh shell
echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# Removing outdated versions
brew cleanup
