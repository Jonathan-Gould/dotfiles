#!/usr/bin/env sh

# symlinks
stow bash
stow zsh
stow shell
stow vim
stow other


# install vim plugins
git clone http://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall &
