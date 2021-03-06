# .bashrc
PATH=$PATH:~/bin
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
[[ -s "~/.git-completion.sh" ]] && source ~/.git-completion.bash
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i*  ]] && source ~/liquidprompt/liquidprompt

export EDITOR='vim'
export PRINTER="printer-bw"
# Colors
alias ls='ls --color=auto'
alias grep='grep --color=always'
alias weather="curl -s wttr.in/Ann\ Arbor"
alias genpass='openssl rand -base64 $1'
alias sshnokey='ssh -o PubkeyAuthentication=no $1'
export BAT_THEME="TwoDark"
function ip () {
  echo ""
  echo "IPv4 Address:" `curl -s 4.ipquail.com/ip`
  echo "IPv4 PTR:" `curl -s 4.ipquail.com/ptr`
  echo ""
  echo "IPv6 Address:" `curl -s 6.ipquail.com/ip`
  echo "IPv6 PTR:" `curl -s 6.ipquail.com/ptr`
  echo ""
}
# Here's a yaml linter, I couldn't get it to work as an alias though
# /usr/bin/ruby -ryaml -e "p YAML.load(STDIN.read)" < hieradata/it-login01.yaml.old

# List the 256 Terminal Colours
# for COLOR in {1..255}; do echo -en "\e[38;5;${COLOR}m${COLOR}"; done; echo;
