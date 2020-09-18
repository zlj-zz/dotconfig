#

for_system_use_pacman(){
    # switch to china source
    echo -n "Whether to switch to chinese source? [Y/n]:"
    read CHIOCE1
    if [[ $CHIOCE1 -eq 'y' || $CHIOCE1 -eq 'Y' ]]; then
        sudo pacman-mirror -i -c China -m rank
        sudo pacman -Syyu
    fi

    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    echo "-----------------------------------------------"

    # add archlinuxcn
    echo "[archlinuxcn]">>/etc/pacman.conf
    echo "SigLevel = Optional TrustedOnly">>/etc/pacman.conf
    echo "Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch">>/etc/pacman.conf
    sudo pacman -Syy & sudo pacman -S archlinuxcn-keyring

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
    sudo pacman -S git neovim ranger w3m lolcat neofetch thefuck flameshot peek screenkey alacritty

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
    yay -S ttf-linux-libertine ttf-inconsolata ttf-joypixels ttf-twemoji-color noto-fonts-emoji ttf-liberation ttf-droid
    yay -S wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts

    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    echo "-----------------------------------------------"
    # install product tools
    sudo pacman -S android-sdk android-studio
}

# main
echo "Start install system environment"
for_system_use_pacman
echo "Finished!"
