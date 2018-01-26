# Installation
## All Systems
### Replace system files (take a backup if you want)

``` 
rm ~/.ssh/config  
rm ~/.bashrc  
rm -rf ~/.vimrc  
rm ~/.tmux.conf  
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf  
ln -s ~/dotfiles/.vimrc ~/.vimrc  
ln -s ~/dotfiles/.bashrc ~/.bashrc  
ln -s ~/dotfiles/.inputrc ~/.inputrc  
ln -s ~/dotfiles/.ssh-config ~/.ssh/config  
sudo chown -R matt:matt autoload  
sudo chown -R matt:matt plugged/  
vi ~/.vimrc  
```



## OSX
### Autoload iTerm2 settings from dotiles

##### Specify the preferences directory
```defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2_profile"  
```
##### Tell iTerm2 to use the custom preferences in the directory
```defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```
#### Other OSX tips and tricks
You can fix this problem by deleting the following plist file, which will reset all your keyboard shortcuts:  
```sudo rm ~/Library/Preferences/com.apple.symbolichotkeys.plist```
