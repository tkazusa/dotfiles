let g:rc_dir =  expand('~/.config/nvim/rc')

function! s:load_rc(file)
  execute 'source' . g:rc_dir . '/' . a:file . '.vim'
endfunction


call s:load_rc('dein')
call s:load_rc('set')
call s:load_rc('mapping')
call s:load_rc('lightline')

filetype detect

