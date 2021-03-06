let g:rc_dir =  expand('~/.config/nvim/rc')

function! s:load_rc(file)
  execute 'source' . g:rc_dir . '/' . a:file . '.vim'
endfunction

call s:load_rc('set')
call s:load_rc('dein')
call s:load_rc('mapping')
call s:load_rc('defx')
call s:load_rc('fzf')
call s:load_rc('fugitive')
call s:load_rc('LanguageClient-neovim')

"---------------------
" aleの設定
"---------------------
let g:ale_linters = {
      \ 'python': ['flake8'],
      \}

let g:ale_fixers = {
      \ 'python': ['autopep8', 'isort', 'yapf'],
      \}

let g:ale_fix_on_save = 1


"--------------------
"dein cache clear
"--------------------
autocmd QuitPre 'call dein#recache_runtimepath()<CR>'


"--------------------
" fzf.vim
" -------------------
let g:fzf_layout = { 'up': '15%' }
let g:fzf_action = {'enter': 'vsplit' }

filetype detect
