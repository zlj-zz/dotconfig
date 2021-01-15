#!/usr/bin/env bash

SCRIPYPTH=~/.config/.my_script
TARGETPATH=~/.local/bin

if [[ ! -d $TARGETPATH ]]; then
    echo -e "\033[33mWarm\033[0m: Don't found target folder, will create it."
    sudo mkdir -p $TARGETPATH
else
    echo -e "\033[32m::\033[0m Got target folder."
fi

echo -e "\033[32m::\033[0m Start link ..."
for script in $(cd $SCRIPYPTH; ls);do
    echo -e "\033[33m==>\033[0m sudo ln -s $SCRIPYPTH/$script $TARGETPATH"
    sudo ln -s $SCRIPYPTH/$script $TARGETPATH
done


