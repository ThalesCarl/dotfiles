#!/bin/bash

sudo apt-get install htop vim neovim git zsh tmux cmatrix ncdu trash-cli

#Config oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#Config vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Install plugins
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ctrlpvim/ctrlp.vim  ~/.vim/bundle/ctrlp
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline
git clone https://github.com/tibabit/vim-templates ~/.vim/bundle/vim-templates

#Create symbolic links
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
