# Configuring default vars
export EDITOR=vim

# Internet utilities
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip='ifconfig | grep -E "inet.*broadcast" | cut -f2 -d" "'