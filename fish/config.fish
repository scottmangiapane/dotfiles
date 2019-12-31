set fish_greeting ""

set -x EDITOR vim
set -x LESS "-g -i -M -R -S -w -z-4"
set -x PAGER less
set -x PATH $PATH ~/.bin
set -x PATH $PATH ~/Library/Python/3.7/bin
set -x TERM xterm-256color

alias trizen "trizen --noedit --noinfo"
alias uuid 'uuidgen | tr "[:upper:]" "[:lower:]"'

source .config.fish
