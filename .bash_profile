# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then

	exec startx

fi
