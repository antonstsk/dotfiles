#!/usr/bin/env bash

# Getting fresh version
which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
    brew update
    brew upgrade
fi

# Installing recent versions of outdated macOS tools 
brew install vim
brew install imagemagick
brew install openssh
brew install grep
brew install php
brew install git
brew install bash

# Switching to fresh installed bash
echo /usr/local/bin/bash | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

# Installing custom terminal emulator
brew cask install iterm2

# Removing outdated versions
brew cleanup
