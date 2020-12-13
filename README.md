<!-- vim-markdown-toc GFM -->

* [My .config](#my-config)
* [Existing configuration:](#existing-configuration)
* [Brief description](#brief-description)
    * [alacritty](#alacritty)
    * [tmux](#tmux)
    * [Ranger](#ranger)
    * [neofetch](#neofetch)
    * [polybar](#polybar)
    * [Pipy](#pipy)
    * [Font](#font)
        * [About Noto](#about-noto)
        * [Emoji](#emoji)
        * [Chinese](#chinese)

<!-- vim-markdown-toc -->

# My .config

There is my **linux** configuration, if you want to use my configuration, most of them have **README**, _you can click to view detail_.

<u>**If there is not special instructions, the folder should be placed in `~/.config`.**</u>

# Existing configuration:

**Windows manager** : <kbd>[i3][3]</kbd>, <kbd>[rofi][12]</kbd>

**Status bar** : <kbd>[polybar][13]</kbd>

**Editor** : <kbd>[neovim][1]</kbd>, <kbd>[vim][2]</kbd>

**Shell** : <kbd>[fish][10]</kbd>, <kbd>[zsh][11]</kbd>

**Terminal** : <kbd>[alacritty][6]</kbd>, <kbd>[tmux][4]</kbd>

**File manager** : <kbd>[ranger][5]</kbd>

**Other** : <kbd>[picom][7]</kbd>, <kbd>[neofetch][8]</kbd>, <kbd>[pipy][9]</kbd>

# Brief description

## alacritty

[Alacritty](https://github.com/alacritty/alacritty) is the fastest terminal emulator in existence. Using the GPU for rendering enables optimizations that simply aren't possible without it.

Change the font to `Source Code Pro`. Use the color theme as `Monokai Dark`.

Terminal transparency is enabled, provided that your computer supports.

## tmux

mux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. tmux may be detached from a screen and continue running in the background, then later reattached.

## Ranger

ranger is a console file manager with VI key bindings. It provides a minimalistic and nice curses interface with a view on the directory hierarchy. It ships with rifle, a file launcher that is good at automatically finding out which program to use for what file type.

## neofetch

Neofetch is a command-line system information tool written in bash 3.2+. Neofetch displays information about your operating system, software and hardware in an aesthetic and visually pleasing way.

## polybar

Polybar aimsto help users build beautiful and highly customizable status bars for their desktop environment, without the need of having a black belt in shell scripting.

## Pipy

Change the mirror source to a domestic source in China.

## Font

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

### About Noto

Just install `noto-fonts` (not `-all`). It's already bloated. Check `/usr/share/fonts/noto`

### Emoji

```
yay -S ttf-linux-libertine ttf-inconsolata ttf-joypixels ttf-twemoji-color noto-fonts-emoji ttf-liberation ttf-droid
```

### Chinese

```
yay -S wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
```

[1]: https://github.com/zlj-zz/nvim
[2]: https://github.com/zlj-zz/vimrc
[3]: ./i3
[4]: ./tmux
[5]: ./ranger
[6]: ./alacritty
[7]: ./picom
[8]: ./neofetch
[9]: ./pip
[10]: ./master/fish
[11]: ./master/zsh
[12]: ./master/rofi
[13]: ./polybar
