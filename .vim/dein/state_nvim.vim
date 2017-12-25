if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/taketoshi.kazusa/.config/nvim/init.vim', '/home/taketoshi.kazusa/.vim/dein/rc/plugin.toml', '/home/taketoshi.kazusa/.vim/dein/rc/plugin_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/taketoshi.kazusa/.vim/dein'
let g:dein#_runtime_path = '/home/taketoshi.kazusa/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/taketoshi.kazusa/.vim/dein/.cache/init.vim'
let &runtimepath = '/home/taketoshi.kazusa/.vim/dein/repos/github.com/Shougo/dein.vim/,/home/taketoshi.kazusa/.config/nvim,/etc/xdg/nvim,/home/taketoshi.kazusa/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/home/taketoshi.kazusa/.vim/dein/repos/github.com/Shougo/dein.vim,/home/taketoshi.kazusa/.vim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/taketoshi.kazusa/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/taketoshi.kazusa/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/taketoshi.kazusa/.config/nvim/after'
filetype off
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['vim-python-pep8-indent'])
