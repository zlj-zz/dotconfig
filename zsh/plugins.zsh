#!/usr/bin/env zsh

export PLUG_DIR=$HOME/.zim
if [[ ! -d $PLUG_DIR ]]; then
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    rm $HOME/.zimrc
    ln -s $HOME/.configrc/zsh/zimrc $HOME/.zimrc
fi

if ! cat $HOME/.zshrc | grep 'source ~/.configrc/zsh/zshrc' > /dev/null 2>&1; then
    echo "source ~/.configrc/zsh/zshrc" >> $HOME/.zshrc
fi

