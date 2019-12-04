set fish_greeting ""

set -x EDITOR vim
set -x LESS "-g -i -M -R -S -w -z-4"
set -x PAGER less
set -x PATH $PATH ~/.bin
set -x TERM xterm-256color

alias pip pip3
alias python python3
alias python2 /usr/bin/python
alias trizen "trizen --noedit --noinfo"
alias uuid 'uuidgen | tr "[:upper:]" "[:lower:]"'

source .profile
