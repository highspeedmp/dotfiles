# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
[[ -s "~/.git-completion.sh" ]] && source ~/.git-completion.bash
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i*  ]] && source ~/liquidprompt/liquidprompt


EDITOR=vim

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=always'
alias weather="curl -s wttr.in/Ann\ Arbor"
alias genpass='openssl rand -base64 $1'
