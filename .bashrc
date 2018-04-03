# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
[[ -s "~/.git-completion.sh" ]] && source ~/.git-completion.bash

EDITOR=vim

# Colors
alias grep='grep --color=always'
alias ls='ls --color=auto'
alias weather="curl -s wttr.in/Ann\ Arbor"
alias genpass='openssl rand -base64 $1'
