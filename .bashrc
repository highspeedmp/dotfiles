# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
EDITOR=vim
# User specific aliases and functions

PATH="/home/MERIT/mpromenc/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/MERIT/mpromenc/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/MERIT/mpromenc/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/MERIT/mpromenc/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/MERIT/mpromenc/perl5"; export PERL_MM_OPT;

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias weather="curl -s wttr.in/Ann\ Arbor"

# Copy customizations to hosts that don't mount the home dir

#function sshb() {
#    scp ~/.bashrc mpromenc@$1:
#    ssh $1
#}

# Define a few Colors
#BLACK='\e[0;30m'
#BLUE='\e[0;34m'
#GREEN='\e[0;32m'
#CYAN='\e[0;36m'
#RED='\e[0;31m'
#PURPLE='\e[0;35m'
#BROWN='\e[0;33m'
#LIGHTGRAY='\e[0;37m'
#DARKGRAY='\e[1;30m'
#LIGHTBLUE='\e[1;34m'
#LIGHTGREEN='\e[1;32m'
#LIGHTCYAN='\e[1;36m'
#LIGHTRED='\e[1;31m'
#LIGHTPURPLE='\e[1;35m'
#YELLOW='\e[1;33m'
#WHITE='\e[1;37m'
#GREENY='\[\033[38;5;37m\]'
#NC='\e[0m'              # No Color

#Prompt
# crazy prompt, almost too crazy
#PS1="${PURPLE}\u@${GREENY}\h${WHITE}(${BROWN}\w${WHITE})\$ ${NC}"
