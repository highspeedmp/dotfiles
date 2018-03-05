# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.git-completion.bash ]; then 
   source ~/.git-completion.bash
fi

EDITOR=vim

# Colors
alias grep='grep --color=always'
alias weather="curl -s wttr.in/Ann\ Arbor"
