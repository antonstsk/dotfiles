# Internet utilities
alias urlencode='python -c "import sys, urllib; print urllib.quote_plus(sys.argv[1]);"'
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Remove all .DS_Stores
alias delds="find . -type f -name '*.DS_Store' -ls -delete"

# Defaults
export LC_ALL='en_US.UTF-8';
export LANG='en_US.UTF-8';
export EDITOR='vim';

# Hide the “default interactive shell is now zsh” warning on macOS.
export BASH_SILENCE_DEPRECATION_WARNING=1;
