#!/bin/bash

system_type=$(uname -s)
dot_backup=~/.olddotfiles

mkdir $dot_backup

if [ "$system_type" = "Darwin" ]; then
  # install homebrew if it's missing
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  brew install git
  cd ~
  git clone https://github.com/highspeedmp/dotfiles.git

dotfiles=(Brewfile inputrc iterm2)
  for i in ${dotfiles[@]}; do
    mv ~/.${i} $dot_backup/.${i}
    ln -s ~/dotfiles/.${i} ~/.${i}
  done
  
  mv ~/.bashrc $dot_backup/.bashrc
  ln -s ~/dotfiles/.bashrc-osx ~/.bashrc

  if [ -f "$HOME/.Brewfile" ]; then
    echo "Updating homebrew bundle"
    brew bundle --global
  fi

  if [ -d "$HOME/.iterm2" ]; then
    echo "Setting iTerm preference folder"
    defaults write com.googlecode.iterm2 PrefsCustomFolder "$HOME/.iterm2"
    defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
  fi
fi

if [ "$system_type" = "Linux" ]; then
  sudo apt install -y git curl vim gconf2 fonts-firacode tmux 
  cd ~
  git clone https://github.com/highspeedmp/dotfiles.git
    
  mv ~/.bashrc $dot_backup/.bashrc
  ln -s ~/dotfiles/.bashrc ~/.bashrc

fi

# Start of Shared config

# create symlinks for dot files

dotfiles=(vimrc tmux.conf git-completion ssh/config)
for i in ${dotfiles[@]}; do
  mv ~/.${i} $dot_backup/.${i}
  ln -s ~/dotfiles/.${i} ~/.${i}
done

# vim-plug
mkdir ~/.vim
mkdir ~/.vim/plugged
mkdir ~/.vim/autoload

if command -v vim >/dev/null 2>&1; then
  vim '+PlugUpdate' '+PlugClean!' '+PlugUpdate' '+qall'
fi

echo ""
echo "Some additional configuration is still requried, view the README.md file in the ~/dotfiles directory"
echo ""
