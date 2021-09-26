#!/bin/bash

sleep 1
if [ -e ~/.Xmodmaprc ]
then
    xmodmap ~/.Xmodmaprc
else
    touch ~/.Xmodmaprc
    echo "keycode 66 = Escape NoSymbol Escape" >> ~/.Xmodmaprc
    echo "keycode 9 = Caps_Lock NoSymbol Caps_Lock" >> ~/.Xmodmaprc
    echo "clear Lock" >> ~/.Xmodmaprc
    sleep 1
    xmodmap ~/.Xmodmaprc
fi

#remove Lock = Caps_Lock

#keysym Caps_Lock = Escape
#keysym Escape = Caps_Lock

#add Lock = Caps_Lock

