# Installation

## All Systems
Pull down the installer file then run it 
```
cd ~ && wget https://gitlab.com/mattprom/dotfiles/raw/master/install.sh && chmod +x install.sh && ./install.sh && rm ./install.sh
```
Fancy version for linux desktops that restarts applications and looks cool
```
cd ~ && wget https://gitlab.com/mattprom/dotfiles/raw/master/install.sh && chmod +x install.sh && ./install.sh && rm ./install.sh && gnome-terminal && exit
```
### git
Safely transfer your github ssh keys (.ssh/highspeedmp-GitHub) to this new setup, then update the github remote url
```
cd ~/dotfiles && git remote set-url origin git@gitlab.com:mattprom/dotfiles.git
```

## Linux 
You'll need to create a new gnome-terminal profile and name it before you can proceed with the one-dark terminal theme installation
```
. ~/dotfiles/one-dark.sh
```
Then you'll need to configure the default profile and install the preferred font (included in this repo)

## OSX
