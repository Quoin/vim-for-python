" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files
 
" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab
 
" visual
set cursorline
set t_Co=256
 
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


