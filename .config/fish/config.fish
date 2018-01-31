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
set git_dirty_color red
set git_not_dirty_color green


function parse_git_branch
    set -l branch (git branch 2> /dev/null | grep -e '\*' | sed 's/^..\(.*\)/\1/')
    set -l git_diff (git diff)

    if test -n "$git_diff"
      echo (set_color $git_dirty_color)$branch(set_color normal)
    else
      echo (set_color $git_not_dirty_color)$branch(set_color normal)
    end
end



function fish_right_prompt
  set -l git_dir (git rev-parse --git-dir 2> /dev/null) 
  if test -n "$git_dir"
    echo [(parse_git_branch)]
  end
end
