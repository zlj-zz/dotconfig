#!/usr/bin/env bash

install() {
    SCRIPYPTH=$HOME/.configrc/.my_script
    TARGETPATH=$HOME/.local/bin

    # color
    color_fg_red='\033[31m'
    color_fg_green='\033[32m'
    color_fg_blue='\033[34m'
    color_fg_aoi='\033[36m'
    color_end='\033[0m'

    # red
    msg_red() {
        echo -en "${color_fg_red}$1${color_end}"
    }

    # green
    msg_green() {
        echo -en "${color_fg_green}$1${color_end}"
    }

    if [[ ! -d $TARGETPATH ]]; then
        msg_red "Warm:"; echo -e  " Don't found target folder, will create it."
        sudo mkdir -p $TARGETPATH
    else
        msg_green "::"; echo -e " Got target folder."
    fi

    msg_green "::"; echo -e " Start link ..."
    for script in $(cd $SCRIPYPTH; ls);do
        msg_green "==>"; echo -e " sudo ln -s $SCRIPYPTH/$script $TARGETPATH"
        sudo ln -s $SCRIPYPTH/$script $TARGETPATH
    done

}

install

