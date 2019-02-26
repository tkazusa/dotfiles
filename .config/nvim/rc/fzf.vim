"--------------------
" fzf.vim
" -------------------
let g:mapleader=' '

nnoremap [Fzf] <Nop>
nmap <Leader>f [Fzf]
nnoremap [Fzf]f :<C-u>Files<CR>
nnoremap [Fzf]g :<C-u>GFiles<CR>
nnoremap [Fzf]gs :<C-u>GFiles?<CR>
nnoremap [Fzf]gc :<C-u>Commits<CR>
nnoremap [Fzf]b :<C-u>Buffers<CR>

