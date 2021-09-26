#!/usr/bin/env zsh

export PLUG_DIR=$HOME/.zim
if [[ ! -d $PLUG_DIR ]]; then
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    rm ~/.zimrc
    ln -s ~/.configrc/zsh/zimrc ~/.zimrc
    echo "source ~/.configrc/zsh/zshrc">>~/.zshrc
fi

