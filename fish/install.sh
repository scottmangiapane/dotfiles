#!/bin/bash

mkdir -p ~/.config/fish/functions
touch ~/.config.fish

ln -sfv ~/.dotfiles/fish/config.fish        ~/.config/fish/config.fish
ln -sfv ~/.dotfiles/fish/fish_prompt.fish   ~/.config/fish/functions/fish_prompt.fish
ln -sfv ~/.dotfiles/fish/jwt.fish           ~/.config/fish/functions/jwt.fish
