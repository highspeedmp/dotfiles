# Installation

## All Systems
Pull down the installer file and then make it executable then run it 
```
cd ~
wget https://raw.githubusercontent.com/highspeedmp/dotfiles/master/install.sh
chmod +x install.sh
./install.sh
```
### git
Safely transfer your github ssh keys (.ssh/highspeedmp-GitHub) to this new setup, then update the github remote url
```
cd ~/dotfiles && git remote set-url origin git@github.com:highspeedmp/dotfiles.git
```

## Linux 
You'll need to create a new gnome-terminal profile and name it before you can proceed with the one-dark terminal theme installation
```
. ~/dotfiles/one-dark.sh
```
Then you'll need to configure the default profile and install the preferred font (included in this repo)
## OSX
You can fix this problem by deleting the following plist file, which will reset all your keyboard shortcuts:  
```sudo rm ~/Library/Preferences/com.apple.symbolichotkeys.plist```
