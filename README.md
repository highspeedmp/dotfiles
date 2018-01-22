# dotfiles
dotfiles for my environment

Clone into home directory

rm ~/.ssh/config   
rm ~/.bashrc  
rm -rf ~/.vimrc   
rm ~/.tmux.conf  
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf   
ln -s ~/dotfiles/.vimrc ~/.vimrc  
ln -s ~/dotfiles/.bashrc ~/.bashrc   
ln -s ~/dotfiles/.inputrc ~/.inputrc  
ln -s ~/dotfiles/.ssh-config ~/.ssh/config  
sudo chown -R matt:matt autoload  
sudo chown -R matt:matt plugged/  
vi ~/.vimrc   
