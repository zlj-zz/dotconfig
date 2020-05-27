# My .config 

There is my **linux** configuration, if you want to use my configuration, most of them have **README**, *you can click to view detail*.

<u>**If there is not special instructions, the folder should be placed in `~/.config`.**</u>

## Existing configuration:

**Windows manager** : <kbd>[i3][3]</kbd>

**Status bar** : <kbd>[polybar][13]</kbd>

**Editor** : <kbd>[neovim][1]</kbd>, <kbd>[vim][2]</kbd>

**Shell** : <kbd>[fish][10]</kbd>, <kbd>[zsh][11]</kbd>

**Terminal** : <kbd>[alacritty][6]</kbd>, <kbd>[tmux][4]</kbd>

**File manager** : <kbd>[ranger][5]</kbd>

**Other** : <kbd>[picom][7]</kbd>, <kbd>[neofetch][8]</kbd>, <kbd>[pipy][9]</kbd>, <kbd>[rofi][12]</kbd>

## Brief description

#### alacritty

[Alacritty](https://github.com/alacritty/alacritty) is the fastest terminal emulator in existence. Using the GPU for rendering enables optimizations that simply aren't possible without it.

Change the font to `Source Code Pro`. Use the color theme as `Monokai Dark`.

Terminal transparency is enabled, provided that your computer supports.

#### neofetch

>put the `neofetch` file into `/usr/bin`

###### add two icons `bilibili` and `bilibili_txt`:

Use it like: `neofetch --ascii_distro bilibili`

![demo bilibili](https://img-blog.csdnimg.cn/20200509174750288.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM4NDEwNDk0,size_16,color_FFFFFF,t_70)

#### pipy

Change the mirror source to a domestic source in China.

#### Font

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
