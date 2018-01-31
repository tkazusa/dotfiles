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



function fish_prompt
    set pwd (set_color green)(prompt_pwd)
    set p (set_color normal) "> "
    echo $pwd $p
end


#Git
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

set __fish_git_prompt_char_dirtystate '✗'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles 'Z'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_right_prompt
    set last_status $status
    printf '%s ' (__fish_git_prompt)
    set_color normal
end
