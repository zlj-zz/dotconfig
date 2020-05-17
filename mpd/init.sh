#!/bin/bash

#########################################################################
# File Name: init.sh
# Created Time: 2020-05-17
# Author: zachary
# Last Modified: 2020-05-17
# Description: mpd init
#########################################################################

if [[ ! -d "$HOME/.config/mpd/playlists" ]]; then
  mkdir -p $HOME/.config/mpd/playlists
fi

pid="$HOME/.config/mpd/mpd.pid"
if [[ ! -f $pid ]]; then
  touch $pid
fi

db="$HOME/.config/mpd/mpd.db"
if [[ ! -f $db ]]; then
  touch $db
fi

state="$HOME/.config/mpd/mpdstate"
if [[ ! -f $state ]]; then
  touch $state
fi

log="$HOME/.config/mpd/mpd.log"
if [[ ! -f $log ]]; then
  touch $log
fi
