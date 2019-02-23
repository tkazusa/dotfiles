let g:rc_dir =  expand('~/.config/nvim/rc')


function! s:load_rc(file)
  execute 'source' . g:rc_dir . '/' . a:file . '.vim'
endfunction

call s:load_rc('set')

filetype detect
