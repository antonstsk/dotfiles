# Configuring default vars
export EDITOR=vim

# Internet utilities
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip='ifconfig | grep -E "inet.*broadcast" | cut -f2 -d" "'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
export ZSH_THEME="af-magic"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
	zsh-autosuggestions
	colored-man-pages
	docker-compose
	zsh-nvm
	symfony
	kubectl
	docker
	brew
	git
	osx
)

# Keep this at the end of ZSH config
source $ZSH/oh-my-zsh.sh
