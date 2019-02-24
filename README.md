```
docker pull ubuntu:18.04
docker run -it -d --name my-ubuntu ubuntu:18.04
docker attach my-ubuntu
```


- defx.nvimを使うためにはnvim > 3.0
- そのためにsoftware-properties-common、
add-apt-repository ppa:neovim-ppa/stable
が必要


# LSP for python
- let g:LanguageClient_serverCommands = {'python': ['pyls']}
- https://qiita.com/ryutah/items/8a4acdb01ad15ebe99f2
- https://blog.foresta.me/posts/nvim_and_lsp_for_rust/

