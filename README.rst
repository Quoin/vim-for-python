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
                
