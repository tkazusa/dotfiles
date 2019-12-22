## Usage
In case that you use create a new `ubuntu:18.04` docker container, please follow comannds below. 
```
$ docker pull ubuntu:18.04
$ docker run -it -d --name my-ubuntu ubuntu:18.04 --mount type=bind,source=XXX,target=XXX
$ docker attach my-ubuntu
```

In the container, clone this repository and run setup.sh.

```
apt-get update
apt-get install git
cd $HOME 
git clone https://github.com/tkazusa/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sudo bashsetup.sh
```
