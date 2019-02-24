```
docker pull ubuntu:18.04
docker run -it -d --name my-ubuntu ubuntu:18.04
docker attach my-ubuntu
```


- defx.nvimを使うためにはnvim > 3.0
- そのためにsoftware-properties-common、
add-apt-repository ppa:neovim-ppa/stable
が必要
