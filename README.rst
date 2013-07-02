======================
VIM Configuration Repo
======================

This repo was inspired by http://rawpackets.com/2011/10/16/configuring-vim-as-a-python-ide/,
with a few changes.  Because of these changes.  I will explain them briefly, then provide any
appropriate instructions below that.

Installing this project:
-------------------
These instructions replace the ones on the rawpacks page linked above.  Note, you probably already
have vim, and might already have custom settings in .vimrc in your home directory.  The instructions
below will create a backup of that file, because the project adds its own .vimrc containing settings
corresponding to the plugins that get installed.  Just remember to add the settings from the backup
into the new .vimrc file if you want them back.

Follow these instructions to install the project::

    sudo cp ~/.vimrc ~/.vimrc.backup
    sudo cp /etc/apt/sources.list ~/etc/apt/sources.list.backup
    echo " deb http://ftp.de.debian.org/debian experimental main" | sudo tee -a /etc/apt/sources.list 
    sudo apt-get install pyflakes
    sudo pip install Flake8

    cd ~/
    git clone git@github.com:Quoin/vim-for-python.git .vim
    cd .vim
    ln -s './.vim/.vimrc' $HOME/.vimrc


Installing additional submodules
--------------------------------
There's an executable file include in the repo called update_all.  When you want to install a new vim
plugin that has a github repo, simple do this from the root .vim directory::

    git submodule add [HTTPS clone URL] bundle/[package name]
    ./update_all


Uninstalling submodules
-----------------------

To remove submodules, do the following:

1. Delete the relevant line from the .gitmodules file.
2. Delete the relevant section from .git/config.
3. Run git rm –cached path_to_submodule
4. Commit and delete the now untracked submodule files.


A couple of cool things so far 
------------------------------

Flake8
  This is a big deal.  Open any python file and just press F7, it will show all the pep8 violations in the current file.


ScrollColors
  To scroll through all the color themes provided in the colour pack, open a file with vim and type this::

  :SCROLL

Then press up and down to see all the different themes.  To use that theme permanently, you must add it to your .vimrc file using the "colorscheme" option.


Gundo
  I didn't realize vim kept such good track of changes.  In typical editors, if you type something, undo it, then type something else, it's practically impossible to go back to what what typed before the first undo.  But vim keeps track of all of this, and Gundo is a great tree-like navigation of all that.  To test it:

| Open a file with vim
| type something
| press "u" to undo it
| type something else
| press "u" to undo it
| type something else
| press F5 to see all the changes, and just navigate through.  When you get to the change you want to have back, just press "Enter."


Changes
-------
Here are some changes I made from the original page on the rawpackets wesite.

pyflakes
  pyflakes wasn't found by apt, so I had to add debian's experimental repsitory as a source.

Lusty
  Requires vim to be compiled with Ruby interpretation, and I didn't want to.  Using NerdTree instead. 

pep8
  Wouldn't work for.  I opted instead to installe Flake8 and use the vim-flake8 plugin 

color-sampler-pack
  This repo was renamed.  It's only needed if you desire to have different color schemes in vim to choose from.  If you don't want to use this, you don't need the scrollColors plugin either.  But I kept both because they're cool.  I just had to update the plugin name to install it correctly.

snipMate
  I just didn't want this, so I removed it.  If you want auto-complete help, you can install this yourself, the instructions from the rawpacks page will work for this plugin.

virtualenv
  I didn't want this so I removed it.


New Plugins List
----------------
Although the plugins are provided already in this repo as submodules, this is what the list of commands
would look like if you were doing this from scratch::

    git submodule add https://github.com/tpope/vim-pathogen.git bundle/pathogen
    git submodule add https://github.com/nvie/vim-flake8.git bundle/vim-flake8
    git submodule add https://github.com/scrooloose/nerdtree bundle/nerdtree
    git submodule add https://github.com/sjl/gundo.vim.git bundle/gundo
    git submodule add https://github.com/vim-scripts/Colour-Sampler-Pack.git bundle/color-sampler-pack
    git submodule add https://github.com/vim-scripts/ScrollColors.git bundle/scrollColors
    git submodule add https://github.com/andrewle/vim-autoclose.git bundle/vim-autoclose
    git submodule add https://github.com/ervandew/supertab.git bundle/supertab
    git submodule add https://github.com/vim-scripts/pydoc.vim.git bundle/pydoc
    git submodule init
    git submodule update
    git submodule foreach git submodule init
    git submodule foreach git submodule update

