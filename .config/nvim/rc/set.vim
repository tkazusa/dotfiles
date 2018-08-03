"python2のインターフェースを無効にする
let g:jedi#force_py_version = 3
set number
set incsearch
set autoindent 
set ic
set shiftwidth=2
set tabstop=2
set expandtab
set laststatus=2
set t_Co=256
set background=dark
set hlsearch
set nomore

set nocursorcolumn
set nocursorline
set norelativenumber
syntax enable
syntax sync minlines=256
colorscheme molokai

set shortmess=t

set ambiwidth=double

set pastetoggle=<f5>

augroup Shebang
  autocmd BufNewFile *.py 0put=\"# -*- encoding: UTF-8 -*-\"|$
augroup END

filetype plugin indent on 
