# ~/.dotfiles
I use this repository to sync my dotfiles among my various machines. It works by downloading all the dotfiles into a single `~/.dotfiles` directory, then creating symlinks from their corresponding paths to the dotfiles directory. This makes updating as easy as `git pull`. Feel free to use them for yourself, or as inspiration for your own dotfiles.

## Installation
WARNING: This will delete any conflicting dotfiles. Also, please read the security notice first.
* Make a fork of this repository
* Clone the fork in your home directory  
  ```bash
  git clone https://github.com/scottmangiapane/dotfiles.git ~/.dotfiles
  ```
* Run the install script  
  ```bash
  ./.dotfiles/install.sh
  ```

## Updating
```bash
cd ~/.dotfiles
git pull
```

## Dependencies
* [Pathogen](https://github.com/tpope/vim-pathogen)
  ```bash
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  ```
* [Vim Hybrid Material](https://github.com/kristijanhusak/vim-hybrid-material)
  ```bash
  git clone https://github.com/kristijanhusak/vim-hybrid-material ~/.vim/bundle/vim-hybrid-material
  ```
* [Fish Shell](https://fishshell.com/)

## Security notice
This repository adds my public SSH key to the authorized hosts file. I have this so that I can easily ssh into all of my machines without entering a password. THIS IS NOT WHAT YOU WANT. If you fork this repository, please remove this line from the installer:
```bash
ln -sfv ~/.dotfiles/ssh/config ~/.ssh/config
```
You may also want to delete the file `~/.dotfiles/ssh/authorized_keys`
