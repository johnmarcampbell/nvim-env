# nvim-env

A portable neovim environment.

## Installation

First backup and delete any existing vim environment files/directories.

    tar -cvf ~/neovimEnvironmentBackup.tar ~/.config/nvim && \
    rm -r ~/.config/nvim

Clone the repo with

    git clone https://github.com/johnmarcampbell/nvim-env ~/.config/nvim

The plugins are managed with [vim-plug](https://github.com/junegunn/vim-plug), which is included as a submodule. Pull down the submodule with
    
    cd ~/.config/nvim && \
    git submodule init && \
    git submodule update

and install the plugins by opening neovim and issuing the `:PlugInstall` command.
