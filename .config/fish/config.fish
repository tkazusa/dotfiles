set -g -x PATH /usr/local/bin $PATH

#peco
function fish_user_key_bindings
    bind \cr peco_select_history
end


export XDG_CONFIG_HOME=$HOME/.config
export TERM=xterm-256color

alias v 'nvim'
alias ll 'ls -la'
alias ps 'ps -aux'

set prompt (set_color #00008B)
