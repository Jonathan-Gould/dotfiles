#!/usr/bin/env sh

# symlinks
ln -sv ~/.dotfiles/inputrc ~/.inputrc
ln -sv ~/.dotfiles/bash_profile ~/.bash_profile
ln -sv ~/.dotfiles/bashrc ~/.bashrc
ln -sv ~/.dotfiles/gvimrc ~/.gvimrc
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sv ~/.dotfiles/profile ~/.profile
ln -sv ~/.dotfiles/vimrc ~/.vimrc
ln -sv ~/.dotfiles/zprofile ~/.zprofile
ln -sv ~/.dotfiles/zshrc ~/.zshrc

mkdir ~/.vim
ln -sv ~/.dotfiles/vanilla.vim ~/.vim/vanilla.vim
ln -sv ~/.dotfiles/plugin_stuff.vim ~/.vim/plugin_stuff.vim

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
