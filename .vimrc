" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files
 
" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab

" pep8 width
let &colorcolumn="80"

" Run Flake8 on write
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
