alias gdb 'gdb -q'
alias glow 'glow -p'
alias jq 'jq -C'
alias uuid 'uuidgen | tr "[:upper:]" "[:lower:]"'

set fish_greeting ""

set -x EDITOR vim
set -x GOPATH ~/.go
set -x LESS "-g -i -M -R -S -w -z-4"
set -x PAGER less
set -x TERM xterm-256color

set -x PATH $PATH ~/.bin
set -x PATH $PATH ~/.cargo/bin
set -x PATH $PATH ~/.local/bin
set -x PATH $PATH ~/.npm-global/bin
set -x PATH $PATH /usr/lib/jvm/default/bin
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

source ~/.config.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

