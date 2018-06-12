# Vim Python IDE
This project provides some basic tools that are helpful for developing Python applications using the Vim editor.

# Install
To install this project::

    sudo apt-get update && sudo apt-get install vim python-pip pyflakes
    sudo pip install Flake8
    cd
    mv .vim .vimBK
    # If this file exists, move it:
    vm .vimrc .vimrcBK
    git clone git@github.com:Quoin/vim-for-python.git .vim
    cd .vim
    ln -s './.vim/.vimrc' $HOME/.vimrc
    chmod +x update_all
    ./update_all

# Contributing
Feel free to clone it, use it, modify it, fork it, love it, hate it, etc.

# Installing / Removing Plugin Submodules
Currently this project supports vim plugins that can be installed as Git submodules.
To install a new vim plugin Git submodule::

    cd ~/.vim
    git submodule add [HTTPS clone URL] bundle/[package name]
    ./update_all

To uninstall a vim plugin Git submodule:

1. Delete the relevant line from the .gitmodules file.
2. Delete the relevant section from .git/config.
3. Run git rm –cached path_to_submodule
4. Commit and delete the now untracked submodule files.
