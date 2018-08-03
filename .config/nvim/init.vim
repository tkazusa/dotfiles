let g:rc_dir =  expand('~/.config/nvim/rc')

function! s:load_rc(file)
  execute 'source' . g:rc_dir . '/' . a:file . '.vim'
endfunction


call s:load_rc('dein')
call s:load_rc('set')
call s:load_rc('mapping')

" Maintainer:	Lars Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

filetype detect

