" --------------------
" vundle BEGIN
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/pydoc.vim'
Plugin 'vim-scripts/ScrollColors'
Plugin 'ervandew/supertab'
Plugin 'nvie/vim-flake8'

call vundle#end()            " required
filetype plugin indent on    " required

" vundle END
" --------------------

" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab

" pep8 width
let &colorcolumn="80"

" Change tabs to 4 spaces
set tabstop=4 shiftwidth=4 expandtab

" Remove all trailing whitespace on save:
autocmd BufWritePre * %s/\s\+$//e

" Run Flake8 on save
autocmd BufWritePost *.py call Flake8()

" visual
set cursorline
set t_Co=256
"set term=cons25

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugins

" colorpack
colorscheme fnaqevan

" gundo
nnoremap <F5> :GundoToggle<CR>

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

set term=xterm-256color
