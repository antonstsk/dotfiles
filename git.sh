#!/usr/bin/env bash

# Defining a helper
yn() {
  read -rp "$1 (y/n): "

  while [[ $REPLY =~ ^[^YyNn]$ ]]; do
    read -rp "Wrong answer try again! Options are [y, n]: "
  done
}

# Starting configuration
yn "Would you like to setup basic Git information?"
if [[ $REPLY =~ ^[Yy]$ ]]; then
  read -rp "Enter an email for git config (empty to skip): " GIT_EMAIL
  if [[ $GIT_EMAIL ]]; then
    git config --global user.email "$GIT_EMAIL";
    echo "✓ Git user email is set."
  fi

  read -rp "Enter a name for git config (empty to skip): " GIT_NAME
  if [[ $GIT_NAME ]]; then
    git config --global user.name "$GIT_NAME";
    echo "✓ Git user name is set."
  fi
  echo ""
fi

yn "Would you like to generate SSH key pair?"
if [[ $REPLY =~ ^[Yy]$ ]]; then

  if [ -z "$GIT_EMAIL" ]; then
    GIT_EMAIL=$(git config user.email)
  fi

  ssh-keygen -t rsa -b 4096 -f "$HOME/.ssh/id_rsa" -C "$GIT_EMAIL"
  ssh-add "$HOME/.ssh/id_rsa"
  echo "✓ You've copied the public SSH key, now add it here: https://github.com/settings/keys"

  echo ""
fi

echo "👋 Bye!"
