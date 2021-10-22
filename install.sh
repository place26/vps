#!/bin/bash

# install fd, ripgrep, bat
echo 
echo install fd, ripgrep, bat

sudo dpkg -i ~/Downloads/fd_8.2.1_amd64.deb
sudo dpkg -i ~/Downloads/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ~/Downloads/bat_0.18.3_amd64.deb

# add neovim repository
sudo add-apt-repository ppa:neovim-ppa/unstable

# install essentials
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget zsh neovim tree git 

# change default shell
chsh -s /bin/zsh

# install vim plug for nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# fzf install and setting
sh ~/.config/fzf/install.sh
cp ~/.fzf.zsh ~/.config/fzf/fzf.zsh
rm ~/.fzf.zsh

# make link
ln -s ~/.config/zsh/zshrc ~/.zshrc
ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
