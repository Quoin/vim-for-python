# Vim Python IDE
This project provides some basic tools that are helpful for developing Python applications using the Vim editor.

## Install
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

This project used [vundle](https://github.com/VundleVim/Vundle.vim) to manage Vim plugins.
Execute the following command in order to install all of the plugins::

    vim +PluginInstall +qall

Note: You will see an error when you run this the first time, because the .vimrc file includes some settings for these plugins that aren't installed yet.

## Contributing
Feel free to clone it, use it, modify it, fork it, love it, hate it, etc.

## Installing / Removing Plugin Submodules
To install a new plugin, just add it to the .vimrc file, right below the other "Plugin" definitions.
For information on how to format the Plugin definition, see the [vundle](https://github.com/VundleVim/Vundle.vim) README file.
After you add a new plugin definition, execute this from the command-line::

    vim +PluginUpdate +qall

To uninstall a vim plugin Git submodule, remove it from the .vimrc file and execute::

    vim +PluginUpdate +qall
