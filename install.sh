#!/bin/bash

## Common

mkdir -p ~/.config/fish/functions

ln -sfv ~/.dotfiles/fish/config.fish       ~/.config/fish/config.fish
ln -sfv ~/.dotfiles/fish/fish_prompt.fish  ~/.config/fish/functions/fish_prompt.fish
ln -sfv ~/.dotfiles/git/gitconfig          ~/.gitconfig
ln -sfv ~/.dotfiles/git/gitignore_global   ~/.gitignore_global
ln -sfv ~/.dotfiles/ssh/authorized_keys    ~/.ssh/authorized_keys
ln -sfv ~/.dotfiles/ssh/config             ~/.ssh/config
ln -sfv ~/.dotfiles/vim/vimrc              ~/.vimrc

## Uncommon

#ln -sfv ~/.dotfiles/bash/bashrc            ~/.bashrc
#ln -sfv ~/.dotfiles/octave/octaverc        ~/.octaverc
#ln -sfv ~/.dotfiles/conky/conky.conf       ~/.config/conky/conky.conf
#ln -sfv ~/.dotfiles/i3/config              ~/.config/i3/config
#ln -sfv ~/.dotfiles/tmux/tmux.conf         ~/.tmux.conf
#ln -sfv ~/.dotfiles/xmonad/xmonad.hs       ~/.xmonad/xmonad.hs
#ln -sfv ~/.dotfiles/zsh/custom.zsh-theme   ~/.oh-my-zsh/custom/themes/custom.zsh-theme
#ln -sfv ~/.dotfiles/zsh/zshrc              ~/.zshrc
