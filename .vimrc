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
" vundle END
" --------------------

" syntax highlighting
syntax on

" Enable filetype detection / specific plugins / indentation
filetype plugin indent on

" vundle END
" --------------------

" indentation
set autoindent

" These things are only set for Python files:
" -------------------------------------------

" Change tabs to 4 spaces
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" pep8 width
au FileType python let &colorcolumn="80"

" Remove all trailing whitespace on save:
au FileType python autocmd BufWritePre * %s/\s\+$//e

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
au FileType python let g:SuperTabDefaultCompletionType = "context"
au FileType python set completeopt=menuone,longest,preview

" Run Flake8 on save
au FileType python autocmd BufWritePost *.py call Flake8()

" These things are set whether or not the file is a Python file:
" --------------------------------------------------------------

" visual
set cursorline
set t_Co=256
set term=xterm-256color

" colorpack
colorscheme fnaqevan

" gundo
nnoremap <F5> :GundoToggle<CR>

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
