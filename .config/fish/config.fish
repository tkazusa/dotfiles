# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set -g -x PATH /usr/local/bin $PATH

#peco
function fish_user_key_bindings
    bind \cr peco_select_history
end


export XDG_CONFIG_HOME=$HOME/.config
export TERM=xterm-256color

alias v 'nvim'
alias ll 'ls -laGn'
alias ps 'ps -aux'
alias ga 'git add'
alias gc 'git commit -m'
alias gp 'git push'



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

function cd
    builtin cd $argv; and ll
end


function fish_right_prompt
  set -l git_dir (git rev-parse --git-dir 2> /dev/null) 
  if test -n "$git_dir"
    echo [(parse_git_branch)]
  end
end
