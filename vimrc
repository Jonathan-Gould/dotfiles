set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'vimwiki/vimwiki'
Plugin 'wincent/Command-T'

Plugin 'reedes/vim-pencil'
Plugin 'godlygeek/tabular'

Plugin 'w0rp/ale'
Plugin 'jpalardy/vim-slime'
Plugin 'SirVer/ultisnips'

Plugin 'vim-python/python-syntax'
Plugin 'lervag/vimtex'
Plugin 'plasticboy/vim-markdown'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

"Plugin 'vim/killersheep'
"Plugin 'honza/vim-snippets'
"Plugin 'leafgarland/typescript-vim'

Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

source ~/.vim/vanilla.vim
source ~/.vim/plugin_stuff.vim
