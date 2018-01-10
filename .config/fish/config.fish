set -g -x PATH /usr/local/bin $PATH

#peco
function fish_user_key_bindings
    bind \cr peco_select_history
end
