<!-- vim-markdown-toc GFM -->

* [My .config](#my-config)
    * [Existing configuration:](#existing-configuration)
    * [Brief description](#brief-description)
        * [alacritty](#alacritty)
        * [tmux](#tmux)
        * [Ranger](#ranger)
            * [Settings](#settings)
                * [Cursor movement](#cursor-movement)
                * [File operation](#file-operation)
                * [Command operation](#command-operation)
                * [Window management](#window-management)
                * [Bookmarks / Tagging / Marking setting](#bookmarks--tagging--marking-setting)
            * [Ranger Devicons plugin](#ranger-devicons-plugin)
        * [neofetch](#neofetch)
        * [polybar](#polybar)
            * [Display My bar](#display-my-bar)
            * [Proposed changes](#proposed-changes)
            * [Icon](#icon)
        * [Pipy](#pipy)
        * [Font](#font)
            * [About Noto](#about-noto)
            * [Emoji](#emoji)
            * [Chinese](#chinese)

<!-- vim-markdown-toc -->

# My .config 

There is my **linux** configuration, if you want to use my configuration, most of them have **README**, *you can click to view detail*.

<u>**If there is not special instructions, the folder should be placed in `~/.config`.**</u>

## Existing configuration:

**Windows manager** : <kbd>[i3][3]</kbd>, <kbd>[rofi][12]</kbd>

**Status bar** : <kbd>[polybar][13]</kbd>

**Editor** : <kbd>[neovim][1]</kbd>, <kbd>[vim][2]</kbd>

**Shell** : <kbd>[fish][10]</kbd>, <kbd>[zsh][11]</kbd>

**Terminal** : <kbd>[alacritty][6]</kbd>, <kbd>[tmux][4]</kbd>

**File manager** : <kbd>[ranger][5]</kbd>

**Other** : <kbd>[picom][7]</kbd>, <kbd>[neofetch][8]</kbd>, <kbd>[pipy][9]</kbd>

## Brief description

### alacritty

[Alacritty](https://github.com/alacritty/alacritty) is the fastest terminal emulator in existence. Using the GPU for rendering enables optimizations that simply aren't possible without it.

Change the font to `Source Code Pro`. Use the color theme as `Monokai Dark`.

Terminal transparency is enabled, provided that your computer supports.

### tmux

you should place the file in `~`, or `ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf`

let `prefix` be `c-x`, and resered `c-b`

You may should install `rainbarf`.

**session:** 

| bind  | function    |
|-------|-------------|
| `c-c` | new session |

**pane:** 

| bind            | function                               |
|-----------------|----------------------------------------|
| `=`             | split current window horizontally      |
| `-`             | split current window vertically        |
| `x`             | close current page                     |
| `h`             | move to left pane                      |
| `j`             | move to down pane                      |
| `k`             | move to up pane                        |
| `l`             | move to right pane                     |
| `>`             | swap current pane with the next one    |
| `<`             | swap create pane with the previous one |
| `H` `J` `K` `L` | resize current pane 2 units            |

**window:** 

| bind    | function                |
|---------|-------------------------|
| `c`     | new window              |
| `0`-`9` | select window           |
| `w`     | show window list        |
| `n`     | move to next window     |
| `p`     | move to previous window |
| `&`     | close current window    |
| `,`     | rename current widow    |

**other:** 

| bind | function                  |
|------|---------------------------|
| `!`  | split widow and open htop |

**change statue bar:**

![statue](https://img-blog.csdnimg.cn/20200923150050560.png)

### Ranger

You can from [here](https://github.com/ranger/ranger)(**ranger github**) know more.

#### Settings

Show hidden file by default. Show line number by default.

- If you want to preview pictures, remember to install `w3m`.
- If you want to preview PDF, remember to install `fmt`.
- If you want to preview vedio, remember to install `ffmpegthumbnailer`. It's used to generate a thumbnail of a vedio.
- If you want to compressed file, you should install `stool`.

Many operations are the same as `vim`.

##### Cursor movement

| ←   | ↓   | ↑   | →   |
|-----|-----|-----|-----|
| `h` | `j` | `k` | `l` |

| shortcut  | action                     |
|-----------|----------------------------|
| `J`       | move cursor down 5 line    |
| `K`       | move cursor up 5 line      |
| `alt`+`j` | scroll preview down 1 line |
| `alt`+`k` | scroll preview up 1 line   |
| `[`       | parent up 1 line           |
| `]`       | parent down 1 line         |
| `H`       | prevous history            |
| `L`       | next history               |

##### File operation

| shortcut | action                                           |
|----------|--------------------------------------------------|
| `e`      | edit                                             |
| `q`/`Q`  | quit / quit all                                  |
| `r`      | rename                                           |
| `cw`     | batch rename                                     |
| `tf`     | touch file                                       |
| `td`     | make a directory                                 |
| `f`      | ftsea (real-time search under the current path ) |
| `F`      | start `fzf` select                               |
| `C`      | compressed files (`.rar` `.tar.gz` `.zip` `.7z`) |
| `X`      | unzip files                                      |
| `S`      | reach the current path                           |
| `zh`     | show hidden files toggle                         |

##### Command operation

| shortcut   | action     |
|------------|------------|
| `:` or `;` | console    |
| `V`        | sudo nvim  |
| `R`        | reload cwd |
| `o`        | sort file  |
| `z`        | settings   |
| `g`        | jump       |

##### Window management

| shortcut      | action         |
|---------------|----------------|
| `ctrl`+`n`    | new tab        |
| `ctrl`+`w`    | close tab      |
| `tab`         | next tab       |
| `shift`+`tab` | previous tab   |
| `<alt>`+`1~9` | select tab 1~9 |

##### Bookmarks / Tagging / Marking setting

| shortcut     | action                 |
|--------------|------------------------|
| `'`+`<any>`  | enter bookmark `<any>` |
| `m`+`<any>`  | set bookmark `<any>`   |
| `um`+`<any>` | unset bookmark `<any>` |
| `T`          | tag toogel             |
| `uT`         | tag remove             |
| `<space>`    | mark one file toggel   |
| `v`          | mark all file toogel   |


---

#### Ranger Devicons plugin 

This plugin introduces a new linemode that prefixes file names with a file icon, [here](https://github.com/alexanderjeurissen/ranger_devicons) is its address.

This plugin uses glyphs from a patched NERDfont
the plugin

```shell
sudo pacman -S nerd-fonts-complete
sudo pacman -S adobe-source-code-pro-fonts
```

### neofetch

>put the `neofetch` file into `/usr/bin`

**add two icons `bilibili` and `bilibili_txt`**:

Use it like: `neofetch --ascii_distro bilibili`

![demo bilibili](https://img-blog.csdnimg.cn/20200509174750288.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM4NDEwNDk0,size_16,color_FFFFFF,t_70)

### polybar

Here is my polybar configurarion. If you want to use, you should modify `[config]`.


#### Display My bar

![demo](https://img-blog.csdnimg.cn/20200608150728193.png)

#### Proposed changes

- **verify network setting**

    Check your network card information. Command: `ifconfig`.

    Like this:

    ```
    enp4s0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
            ether f8:75:a4:26:e8:72  txqueuelen 1000  (Ethernet)
            RX packets 0  bytes 0 (0.0 B)
            RX errors 0  dropped 0  overruns 0  frame 0
            TX packets 0  bytes 0 (0.0 B)
            TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

    wlp0s20f3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
            inet 192.168.31.215  netmask 255.255.255.0  broadcast 192.168.31.255
            inet6 fe80::cb96:eb45:2102:935a  prefixlen 64  scopeid 0x20<link>
            ether e2:b4:fb:6c:4c:f6  txqueuelen 1000  (Ethernet)
            RX packets 4002803  bytes 3187135654 (2.9 GiB)
            RX errors 0  dropped 9  overruns 0  frame 0
            TX packets 1300150  bytes 221681555 (211.4 MiB)
            TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
    ```

    modify `config`

    ```dosini
    [config]
    network-wlan = wlp0s20f3
    network-eth = enp4s0
    ```

- **install `xbacklight` to adjust the backlight.**

    ```shell
    sudo pacman -S xbacklight
    ```

- **You can modify the *CPU* or *MEMORY* icon.**

    ```dosini
    [config]
    cpu-icon = ...
    memory-icon = ...
    ```

- **Use the github module.**

    GitHub personal token, generate from [here](https://github.com/settings/tokens/new?scopes=notifications&description=Notifier+for+Polybar)

    ```dosini
    [config]
    github-token = <your token>
    ```

#### Icon

If you want to change **icon**, I recommend going [https://fontawesome.com/cheatsheet/free/solid](https://fontawesome.com/cheatsheet/free/solid).

### Pipy

Change the mirror source to a domestic source in China.

### Font

**locale** 
<!-- for display some icon -->
In `/etc/locale.conf`

```
LANG=en_US.UTF-8
LC_ADDRESS=en_US.UTF-8
LC_IDENTIFICATION=en_US.UTF-8
LC_MEASUREMENT=en_US.UTF-8
LC_MONETARY=en_US.UTF-8
LC_NAME=en_US.UTF-8
LC_NUMERIC=en_US.UTF-8
LC_PAPER=en_US.UTF-8
LC_TELEPHONE=en_US.UTF-8
LC_TIME=en_US.UTF-8
```

I use the `Source Code Pro` font and `nerd-fonts-source-code-pro`.

#### About Noto

Just install `noto-fonts` (not `-all`). It's already bloated. Check `/usr/share/fonts/noto`

#### Emoji

```
yay -S ttf-linux-libertine ttf-inconsolata ttf-joypixels ttf-twemoji-color noto-fonts-emoji ttf-liberation ttf-droid
```

#### Chinese
```
yay -S wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
```










[1]: https://github.com/zlj-zz/nvim
[2]: https://github.com/zlj-zz/vimrc
[3]: https://github.com/zlj-zz/conff/tree/master/i3
[4]: https://github.com/zlj-zz/linuxConfig/tree/master/tmux
[5]: https://github.com/zlj-zz/conff/tree/master/ranger
[6]: https://github.com/zlj-zz/conff/tree/master/alacritty
[7]: https://github.com/zlj-zz/conff/tree/master/picom
[8]: https://github.com/zlj-zz/conff/tree/master/neofetch
[9]: https://github.com/zlj-zz/conff/tree/master/pip
[10]: https://github.com/zlj-zz/dotconfig/tree/master/fish
[11]: https://github.com/zlj-zz/dotconfig/tree/master/zsh
[12]: https://github.com/zlj-zz/dotconfig/tree/master/rofi
[13]: https://github.com/zlj-zz/conff/tree/master/polybar
