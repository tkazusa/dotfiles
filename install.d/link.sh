
#!/bin/bash
TMUXDIR=$HOME/.tmux.conf
if [ -e $TMUXDIR ]; then
	rm -r $TMUXDIR
	ln -s $DOTDIR/.tmux.conf $HOME
else
	ln -s $DOTDIR/.tmux.conf $HOME
fi


CONFDIR=$HOME/.config
if [ -e $CONFDIR ]; then
	rm -r $CONFDIR
	ln -s $DOTDIR/.config $HOME
else
	ln -s $DOTDIR/.config $HOME
fi


BASHPROFILEDIR=$HOME/.bash_profile
if [ -e $BASHPROFILEDIR ]; then
	rm -r $BASHPROFILEDIR
	ln -s $DOTDIR/.bash_profile $HOME
else
	ln -s $DOTDIR/.bash_profile $HOME
fi
