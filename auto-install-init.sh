# Create time: 2020.09.17
# Author: Zachary Zhang

for_system_use_pacman(){
    # switch to china source
    echo -n "Whether to switch to chinese source? [Y/n]:"
    read CHIOCE1
    if [[ $CHIOCE1 -eq 'y' || $CHIOCE1 -eq 'Y' ]]; then
        sudo pacman-mirror -i -c China -m rank
        sudo pacman -Syyu
        # add archlinuxcn
        echo "[archlinuxcn]">>/etc/pacman.conf
        echo "SigLevel = Optional TrustedOnly">>/etc/pacman.conf
        echo "Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch">>/etc/pacman.conf
        sudo pacman -Syy & sudo pacman -S archlinuxcn-keyring
    fi

    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    echo "-----------------------------------------------"

    # update base-devel
    sudo pacman -Sy base-devel

    # install fcitx
    sudo pacman -S fcitx-im kcm-fcitx fcitx-googlepinyin
    echo "export GTK_IM_MODULE=fcitx">>~/.profile
    echo "export QT_IM_MODULE=fcitx">>~/.profile
    echo "export XMODIFIERS="@im=fcitx"">>~/.profile

    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    # install my system tools
    sudo pacman -S git neovim lolcat neofetch thefuck flameshot peek screenkey alacritty

    yay -S lazygit

    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    # install software
    sudo pacman -S wps-office netease-cloud-music typroa qq-linux motrix kdenlive virtual-box

    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    # install font, emjoy and chinese
    sudo pacman -S noto-fonts nerd-fonts-source-code-pro
    yay -S ttf-linux-libertine ttf-inconsolata ttf-joypixels ttf-twemoji-color noto-fonts-emoji ttf-liberation ttf-droid
    yay -S wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts

    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    # install product tools
    sudo pacman -S android-sdk 
}

# main
echo "Start install system environment"
echo "Change the keyboard mapping?[Y/n]"
read ICKM
if [[ $ICKM -eq 'Y' || $ICKM -eq 'y' ]]; then
    echo "sh ~/.config/change-key-map.sh & ">>~/.profile
fi
for_system_use_pacman
echo "Finished!"
