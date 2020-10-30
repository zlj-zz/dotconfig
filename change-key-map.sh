#!/bin/bash

source $HOME/.config/.locale.conf

if [ -e ~/.Xmodmap ]
then
    xmodmap ~/.Xmodmap
else
    touch ~/.Xmodmap
    echo "keycode 66 = Escape NoSymbol Escape" >> ~/.Xmodmap
    echo "keycode 9 = Caps_Lock NoSymbol Caps_Lock" >> ~/.Xmodmap
    echo "clear Lock" >> ~/.Xmodmap
    sleep 1
    xmodmap ~/.Xmodmap
fi

#remove Lock = Caps_Lock

#keysym Caps_Lock = Escape
#keysym Escape = Caps_Lock

#add Lock = Caps_Lock

