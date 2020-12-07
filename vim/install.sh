#!/bin/bash
ln -sfv ~/.dotfiles/vim/vimrc               ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/chr4/nginx.vim.git ~/.vim/bundle/vim-nginx
git clone https://github.com/digitaltoad/vim-pug.git ~/.vim/bundle/vim-pug
git clone https://github.com/kristijanhusak/vim-hybrid-material.git ~/.vim/bundle/vim-theme
