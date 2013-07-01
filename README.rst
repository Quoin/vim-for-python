======================
VIM Configuration Repo
======================

This repo was inspired by http://rawpackets.com/2011/10/16/configuring-vim-as-a-python-ide/,
with a few changes:

pyflakes
--------
pyflakes wasn't found by apt. 
- Added this line to /etc/apt/sources.list:  deb http://ftp.de.debian.org/debian experimental main 
- sudo apt-get install pyflakes

Lusty
-----
Lusty requires vim be compiled with Ruby interpretation and I didn't want to.  Using NerdTree instead.
- Removed lusty-related settings from .vimrc

| Remove:
| git submodule add https://github.com/sjbach/lusty.git bundle/lusty
| Replace with:
| git submodule add https://github.com/scrooloose/nerdtree bundle/nerdtree

pep8
----
Chose Flake8 over pep8.  pep8 validation wasn't working for me.  With Flake8, currently-opened file can
be validated by pressing the F7 key.
- Requires Flake8.
- sudo pip install Flake8
- Removed pep8-related settings from .vimrc

| Remove:
| git submodule add https://github.com/cburroughs/pep8.git bundle/pep8
| Replace with:
| git submodule add https://github.com/nvie/vim-flake8.git bundle/vim-flake8

Color-Sampler-Pack
------------------
If there's anything you don't need from the list of submodules, it's this one.  It's just used for the
theme set in .vimrc.  If you don't want to use this, just remove the appropriate line from the list
of submodules to install, and also remove the "colorscheme vibrantink" line from .vimrc.

Anyway, if you want it, the repo name changed.

| Remove:
| git submodule add https://github.com/vim-scripts/Color-Sampler-Pack.git bundle/color-sampler-pack
| Replace:
| git submodule add https://github.com/vim-scripts/Colour-Sampler-Pack.git bundle/color-sampler-pack

.vimrc
------
Some settings I removed from this file as a result of not using all the same plugins as the author used.
Other settings I removed because I found them preposterous.  Here's my vimrc file::

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


Uninstalling submodules
-----------------------

To remove submodules, do the following:

- Delete the relevant line from the .gitmodules file.
- Delete the relevant section from .git/config.
- Run git rm –cached path_to_submodule
- Commit and delete the now untracked submodule files.

Taken from here: http://blogs.atlassian.com/2013/03/git-submodules-workflows-tips/#tip2, which contains
lots more information about git submodules


* A couple of cool things so far *

Flake8
------
This is a big deal.  Open any python file and just press F7, it will show all the
pep8 violations in the current file.


ScrollColors
------------
This thing is totally fun.  In the past, when trying to find a good color scheme for
vim, I've found various pages that list each theme with screenshots, but they never 
look exactly like they do on my machine.  This module allows you to open up a python
file and scroll through each color theme from the clour-sampler-pack.  Just open up
a python file and this this::

:SCROLL

Then press up and down to see all the different themes.


Gundo
-----

I didn't realize vim kept such good track of changes.  In typical editors, if you type
something, undo it, then type something else, it's practically impossible to go back
to what what typed before the first undo.  But vim keeps track of all of this, and
Gundo is a great tree-like navigation of all that.  To test it:

| Open a file with vim
| type something
| press "u" to undo it
| type something else
| press "u" to undo it
| type something else
| press F5 to see all the changes, and just navigate through.  When you get to the change
you want to have back, just press "Enter."


