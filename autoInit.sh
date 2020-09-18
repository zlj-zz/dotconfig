echo "Start install system environment"

# switch to china source
echo -n "Whether to switch to chinese source? [Y/n]:"
read CHIOCE1
if [[ $CHIOCE1 -eq 'y' || $CHIOCE1 -eq 'Y' ]]; then
    sudo pacman-mirror -i -c China -m rank
    sudo pacman -Syyu
fi

# add archlinuxcn
echo "[archlinuxcn]">>/etc/pacman.conf
echo "SigLevel = Optional TrustedOnly">>/etc/pacman.conf
echo "Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch">>/etc/pacman.conf
sudo pacman -Syy & sudo pacman -S archlinuxcn-keyring

# install fcitx
sudo pacman -S fcitx-im kcm-fcitx fcitx-googlepinyin
echo "export GTK_IM_MODULE=fcitx">>~/.xprofile
echo "export QT_IM_MODULE=fcitx">>~/.xprofile
echo "export XMODIFIERS="@im=fcitx"">>~/.xprofile

# install my system tools
sudo pacman -S git neovim ranger w3m lolcat neofetch thefuck flameshot 

# install software
sudo pacman -S wps-office netease-cloud-music typroa

# install product tools
sudo pacman -S android-sdk android-studio
