"Bare Essentials
set nocompatible
syntax on
inoremap jk <Esc>

"Indentation
set tabstop=4       "show existing tab with 4 spaces width
set shiftwidth=4    " when indenting with '>', use 4 spaces width
set expandtab       " On pressing tab, insert 4 spaces
set softtabstop=4
set autoindent

"Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set hlsearch

"Hidden Buffers
set hidden
set confirm

"Remapping
let mapleader=' '
let maplocalleader = ','
nnoremap <leader>s :w<cr> :source\ ~/.vimrc<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader><space> :w<cr>
nnoremap <C-j> o<Esc>
nnoremap <C-k> O<Esc>
nnoremap <leader>d :bd<cr>
nnoremap <leader>e :enew<cr>
nnoremap <localleader>s :setl spelllang=es <bar> setl spell <bar> :set guifont=Hack:h16<cr>
nnoremap <leader>h :set invhls<cr>
nnoremap <leader>b :let &background = ( &background == "dark"? "light" : "dark" )<CR>

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap gf :e <cfile><CR>
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" https://askubuntu.com/a/4247
" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/yourname/.vimundo/


"This saves the cursor position"
    set viminfo='10,\"100,:20,%,n~/.viminfo
    function! ResCur()
        if line("'\"") <= line("$")
            normal! g`"
            return 1
        endif
    endfunction
    "
    augroup resCur
        autocmd!
        autocmd BufWinEnter * call ResCur()
    augroup END

    " Tell vim to remember certain things when we exit
    "  '10  :  marks will be remembered for up to 10 previously edited files
    "  "100 :  will save up to 100 lines for each register
    "  :20  :  up to 20 lines of command-line history will be remembered
    "  %    :  saves and restores the buffer list
    "  n... :  where to save the viminfo files

" see https://stevelosh.com/blog/2010/09/coming-home-to-vim/?#s27-scratch

source ~/.plugin_stuff.vim
