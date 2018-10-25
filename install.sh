#!/bin/bash

# Lazy, but any argument will set desktop to true to trigger some linux desktop specific customziations
echo "Is this a Linux Desktop? Type Y, otherwise type something else"
read is_desktop
system_type=$(uname -s)
dot_backup=~/.olddotfiles

mkdir $dot_backup

if [ "$system_type" = "Darwin" ]; then
  # install homebrew if it's missing
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing homebrew"
    # if user is an admin on the box use the recommeneded install which puts brew into /usr/local
    #sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # if user is not an admin then do this stuff -assume this is the case
    mkdir ~/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
  fi
  ~/hombrew/bin/brew install git
  cd ~
  ~/homebrew/bin/git clone https://github.com/highspeedmp/dotfiles.git

dotfiles=(Brewfile inputrc iterm2)
  for i in ${dotfiles[@]}; do
    mv ~/.${i} $dot_backup/.${i//\//_}
    ln -s ~/dotfiles/.${i} ~/.${i}
  done
  
  mv ~/.bashrc $dot_backup/.bashrc
  ln -s ~/dotfiles/.bashrc-osx ~/.bashrc

  if [ -f "$HOME/.Brewfile" ]; then
    echo "Updating homebrew bundle"
    ~/homebrew/bin/brew bundle --global
  fi

  if [ -d "$HOME/.iterm2" ]; then
    echo "Setting iTerm preference folder"
    defaults write com.googlecode.iterm2 PrefsCustomFolder "$HOME/.iterm2"
    defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
  fi
fi

if [ "$system_type" = "Linux" ]; then
  sudo apt install -y git curl vim tmux
  cd ~
  git clone https://github.com/highspeedmp/dotfiles.git
  
  mv ~/.bashrc $dot_backup/.bashrc
  ln -s ~/dotfiles/.bashrc ~/.bashrc
fi

# Start of Shared config

# create symlinks for dot files
mkdir ~/.ssh
ln -s ~/dotfiles/.ssh-config ~/.ssh/config

dotfiles=(vimrc tmux.conf git-completion liquid.ps1 liquidpromptrc)
for i in ${dotfiles[@]}; do
  mv ~/.${i} $dot_backup/.${i//\//_}
  ln -s ~/dotfiles/.${i} ~/.${i}
done

# Git config

git config --global user.email "mattprom@gmail.com"
git config --global user.name "Matthew Promenchenkel"

# Linux desktop specific configuration 

if [ "$is_desktop" = "Y" ]; then
  sudo apt -y install python3-pip gconf2 fonts-firacode gnome-tweaks
  sudo pip3 install pywal
  mv ~/.bashrc $dot_backup/.bashrc
  ln -s ~/dotfiles/.bashrc-linux-desktop ~/.bashrc
  
  mv ~/.vimrc $dot_backup/.vimrc
  ln -s ~/dotfiles/.vimrc-linux-desktop ~/.vimrc

  chmod a+x ~/dotfiles/one-dark.sh && ~/dotfiles/one-dark.sh
  cd ~ && wget https://github.com/themix-project/oomox/releases/download/1.6.0/oomox_1.6.0.deb
  cd ~ && sudo dpkg -i oomox_1.6.0.deb
  sudo apt -y install -f 
  wal -g -i ~/dotfiles/desktop.jpg
  gsettings reset org.gnome.desktop.interface gtk-theme
  gsettings set org.gnome.desktop.interface gtk-theme wal
fi
# vim-plug
mkdir ~/.vim
mkdir ~/.vim/plugged
mkdir ~/.vim/autoload

if command -v vim >/dev/null 2>&1; then
  vim '+PlugUpdate' '+PlugClean!' '+PlugUpdate' '+qall'
fi

# liquid prompt
git clone https://github.com/nojhan/liquidprompt.git
echo ""
echo "Some additional configuration is still requried, view the README.md file in the ~/dotfiles directory"
echo ""
source ~/.bashrc
