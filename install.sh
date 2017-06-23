#!/bin/bash

mkdir -p ~/.vim
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bitmaps
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/doc
mkdir -p ~/.vim/indent
mkdir -p ~/.vim/syntax

ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/modules/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
ln -s $PWD/modules/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim
ln -s $PWD/modules/solarized/vim-colors-solarized/autoload/togglebg.vim ~/.vim/autoload/togglebg.vim
ln -s $PWD/modules/solarized/vim-colors-solarized/bitmaps/togglebg.png ~/.vim/bitmaps/togglebg.png
ln -s $PWD/modules/solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
ln -s $PWD/modules/solarized/vim-colors-solarized/doc/solarized.txt ~/.vim/doc/solarized.txt
ln -s $PWD/modules/solarized/vim-colors-solarized/doc/tags ~/.vim/doc/tags
ln -s $PWD/modules/vim-javascript/syntax/javascript.vim ~/.vim/syntax/javascript.vim
ln -s $PWD/modules/vim-javascript/indent/javascript.vim ~/.vim/indent/javascript.vim
ln -s $PWD/modules/vim-pug/syntax/pug.vim ~/.vim/syntax/pug.vim
ln -s $PWD/modules/vim-pug/indent/pug.vim ~/.vim/indent/pug.vim
