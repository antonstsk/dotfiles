#!/usr/bin/env bash
[ -f ./includes/functions.sh ] && . ./includes/functions.sh

yn "This may overwrite existing files in home directory. Are you sure?"

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Syncing configuration files..."
  echo "-------------------------"
  rsync --exclude "brew.sh" --exclude "copy.sh" --exclude "git.sh" \
    --exclude ".DS_Store" --exclude "README.md" \
    --exclude ".vscode/" --exclude ".idea/" \
    --exclude "includes/" \
    --exclude ".git/" \
    -avh --no-perms . ~
  source ~/.bash_profile
  echo ""
fi

echo "👋 Bye!"
