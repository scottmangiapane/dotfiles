# ~/.dotfiles
I use this repository to sync my dotfiles across my various machines. It works by downloading all the dotfiles into a single `~/.dotfiles` directory, then creating symlinks from their various system paths to the dotfiles directory. This makes updating as easy as `git pull`. Feel free to use them for yourself, or as inspiration for your own dotfiles.

## Installation
WARNING: This will delete any conflicting dotfiles. Also, please read the security notice first.
* Make a fork of this repository
* Clone the fork in your home directory:
  ```bash
  git clone https://github.com/scottmangiapane/dotfiles.git ~/.dotfiles
  ```
  Or with SSH key:
  ```bash
  git clone git@github.com:scottmangiapane/dotfiles.git ~/.dotfiles
  ```
* Run the install script
  ```bash
  ~/.dotfiles/install-defaults.sh
  ```
* The installer only installs the dotfiles for the tools I use most frequently. Additional installation scripts are located in each subdirectory in case something you want is not included by default.

## Updating
```bash
cd ~/.dotfiles
git pull
```

## Security notice
This repository adds my public SSH key to the authorized hosts file. I have this so that I can easily ssh into all of my machines without entering a password. THIS IS NOT WHAT YOU WANT. If you fork this repository, please update the SSH installer accordingly.
