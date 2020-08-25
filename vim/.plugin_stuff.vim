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


"ALE
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_insert_leave = 0
    let g:ale_linters = {
                \   'python': ['flake8'],
                \   'tex':['chktex'],
                \}
                "\  'typescript': ['tsserver', 'tslint'],
    let g:ale_fixers = {
                \   '*': ['remove_trailing_lines'],
                \   'python': ['black'],
                \   'c': ['clang-format'],
                \   'html': ['prettier'],
                \}
    let g:ale_python_flake8_options = '--max-line-length 88'
    let g:ale_fix_on_save = 1
    let g:ale_c_clangformat_options = '-style=file'
    nmap <leader>a :ALEToggle<cr>


"slime
    let g:slime_python_ipython = 1
    let g:slime_target = "tmux"
    let g:slime_cell_delimiter = "# %%"
    nmap <c-f> <Plug>SlimeSendCell


"ultiSnips
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tap>"
    let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

"NerdTree
    nmap <leader>; :NERDTree<cr>
    let NERDTreeMapActivateNode='l'
    let NERDTreeQuitOnOpen = 1
    let NERDTreeAutoDeleteBuffer = 1
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1

"Python highlighting
    let g:python_highlight_all = 1

"VimWiki
"    let g:vimwiki_list = [{'path': '~/vimwiki/',
"                          \ 'syntax': 'markdown', 'ext': '.md'}]

"VimMarkdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
"let g:vim_markdown_toml_frontmatter = 1
"let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1

"VimTex
    let g:tex_flavor = 'latex'
    "let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:tex_conceal='abdmg'
    let g:vimtex_view_automatic = 1
    let g:vimtex_view_method = 'zathura'
    let g:vimtex_compiler_latexmk = {
        \ 'options' : [
        \   '-pdf',
        \   '-shell-escape',
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
    " default is the one that removes all warnings
    let g:vimtex_quickfix_latexlog = {
        \ 'default': 0,
        \ 'overfull' : 0,
        \ 'underfull' : 0,
        \ '' : 0,
        \ 'packages' : {
        \   'default' : 0,
        \ },
        \}
    let g:quickfix_ignore_filters = [
        \ 'LaTeX Font Warning',
        \]


"Appearences
    colorscheme solarized
    let g:airline_powerline_fonts = 1
