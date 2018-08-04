nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

"terminal emulate
nnoremap ts :split<CR><C-w>j:terminal<CR>i
nnoremap tv :vsplit<CR><C-w>j:terminal<CR>i
tnoremap <C-q> <C-\><C-n>:q<CR>
tnoremap <ESC> <C-\><C-n>


" window  split
nnoremap s <Nop>
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap <silent> <ESC> <C-\><C-n>


