alias uuid 'uuidgen | tr "[:upper:]" "[:lower:]"'

set fish_greeting ""

set -x DOCKER_CONTENT_TRUST 1
set -x EDITOR vim
set -x LESS "-g -i -M -R -S -w -z-4"
set -x PAGER less
set -x PATH $PATH ~/.bin
set -x PATH $PATH ~/.npm-global/bin
set -x TERM xterm-256color

source .config.fish
