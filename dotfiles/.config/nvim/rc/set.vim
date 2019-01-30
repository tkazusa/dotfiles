"python2のインターフェースを無効にする
let g:jedi#force_py_version = 3
set number

" search
set incsearch
set smartcase
set ignorecase
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>
set hlsearch

"tab indent
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set laststatus=2

set ic
set nomore
set whichwrap=b,s,h,l<,>,[,],~

set nocursorcolumn
set nocursorline
set norelativenumber

"looks
set t_Co=256
set background=dark
colorscheme molokai
syntax sync minlines=256
set syntax=markdown
au BufRead, BufNewFile *.md set filetype=markdown
set nowrap
set shortmess=t
set cursorline
hi clear CursorLine 

set ambiwidth=double

set pastetoggle=<f5>

augroup Shebang
  autocmd BufNewFile *.py 0put=\"# -*- coding: utf-8 -*-\"|$
augroup END

let g:SuperTabContextDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"

" spellcheck
set spell
set spelllang=en,cjk


filetype plugin indent on 
