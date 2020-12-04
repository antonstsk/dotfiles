#!/usr/bin/env bash

# Installing Oh-My-Zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"

# Plugins installation
git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone https://github.com/lukechilds/zsh-nvm "$HOME/.oh-my-zsh/custom/plugins/zsh-nvm"
