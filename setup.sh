# this script set vimrc and clone plugins
#!/bin/bash

VIMDIR=~./.vim
BUNDLE_DIR=~/.vim/bundle/
AUTOLOAD_DIR=~/.vim/autoload/
VIMRC=~/.vimrc


if [ -d $AUTOLOAD_DIR ]; then
    rm -rf $AUTOLOAD_DIR/*
else
    mkdir -p $AUTOLOAD_DIR
fi

if [ -d $BUNDLE_DIR  ]; then
    rm -rf $BUNDLE_DIR/*
else
    mkdir -p $BUNDLE_DIR
fi

if [ -f $VIMRC ]; then
    rm -f $VIMRC
fi

# copy vimrc file
cp ./vimrc $VIMRC

# pathogen
wget -O $AUTOLOAD_DIR https://tpo.pe/pathogen.vim

# neocomplete
git clone "https://github.com/Shougo/neocomplete.vim.git" $BUNDLE_DIR/neocomplete.vim

# nertree
git clone "https://github.com/scrooloose/nerdtree.git" $BUNDLE_DIR/nerdtree

# tagbar
git clone "https://github.com/majutsushi/tagbar.git" $BUNDLE_DIR/tagbar

# vim-colors-solarized
git clone "https://github.com/altercation/vim-colors-solarized.git" $BUNDLE_DIR/vim-colors-solarized

# vimerl
git clone "https://github.com/jimenezrick/vimerl.git" $BUNDLE_DIR/vimerl

# vim-indent-guides
git clone "https://github.com/nathanaelkane/vim-indent-guides.git" $BUNDLE_DIR/vim-indent-guides

# vim-powerline
git clone "https://github.com/Lokaltog/vim-powerline.git" $BUNDLE_DIR/vim-powerline

# auto-pairs
git clone "https://github.com/jiangmiao/auto-pairs.git" $BUNDLE_DIR/auto-pairs



