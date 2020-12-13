# Ranger

You can from [here](https://github.com/ranger/ranger)(**ranger github**) know more.

This is my ranger configuration with some special setting. If you want, you can use it.

## Settings

Show hidden file by default. Show line number by default.

Many operations are the same as `vim`.

### Cursor movement

| ←   | ↓   | ↑   | →   |
| --- | --- | --- | --- |
| `h` | `j` | `k` | `l` |

| shortcut  | action                     |
| --------- | -------------------------- |
| `J`       | move cursor down 5 line    |
| `K`       | move cursor up 5 line      |
| `alt`+`j` | scroll preview down 1 line |
| `alt`+`k` | scroll preview up 1 line   |
| `[`       | parent up 1 line           |
| `]`       | parent down 1 line         |
| `H`       | prevous history            |
| `L`       | next history               |

### File operation

| shortcut | action                                           |
| -------- | ------------------------------------------------ |
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

### Command operation

| shortcut   | action     |
| ---------- | ---------- |
| `:` or `;` | console    |
| `V`        | sudo nvim  |
| `R`        | reload cwd |
| `o`        | sort file  |
| `z`        | settings   |
| `g`        | jump       |

### Window management

| shortcut      | action         |
| ------------- | -------------- |
| `ctrl`+`n`    | new tab        |
| `ctrl`+`w`    | close tab      |
| `tab`         | next tab       |
| `shift`+`tab` | previous tab   |
| `<alt>`+`1~9` | select tab 1~9 |

### Bookmarks / Tagging / Marking setting

| shortcut     | action                 |
| ------------ | ---------------------- |
| `'`+`<any>`  | enter bookmark `<any>` |
| `m`+`<any>`  | set bookmark `<any>`   |
| `um`+`<any>` | unset bookmark `<any>` |
| `T`          | tag toogel             |
| `uT`         | tag remove             |
| `<space>`    | mark one file toggel   |
| `v`          | mark all file toogel   |

---

## Ranger Devicons plugin

This plugin introduces a new linemode that prefixes file names with a file icon, [here](https://github.com/alexanderjeurissen/ranger_devicons) is its address.

This plugin uses glyphs from a patched NERDfont,[https://github.com/ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

### For pacman

```shell
sudo pacman -S nerd-fonts-complete
sudo pacman -S adobe-source-code-pro-fonts
```

### For MacOS

> Best optio if on macOS and want to use Homebrew.

All fonts are available via Homebrew Cask Fonts on macOS (OS X)

```shell
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-fontn
```

If the NerdFont installed and the icons will not properly appear in Ranger.

**So may you need to select the font in you terminal.**

## Preview

- If you want to preview pictures, remember to install `w3m`.
- If you want to preview PDF, remember to install `fmt`.
- If you want to preview vedio, remember to install `ffmpegthumbnailer`. It's used to generate a thumbnail of a vedio.
- If you want to compressed file, you should install `stool`.

### For preview image

Since 1.6.0, ranger can preview images in full color. This works by calling a program named `w3mimgdisplay` that's included in the w3m web browser, which draws images directly into the terminal.

If you system is MacOS, when you install the `w3m` the imgdisplay default is disable. I don't find some good way to solve this.

But if you use **iTerm2**, a Mac OS X terminal replacement, you can enable a method that takes advantage of the built-in drawing functionality so you won't need w3m.

#### with w3m

- install w3m wth the image drawing feature. On Arch Linux, the package is called "w3m", on Debian and Fedora it's "w3m-img".
- terminal call `w3m -version`, you should see `image` in the tips.
- Add the line `set preview_images true` to your `~/.config/ranger/rc.conf`.
- Add the line `set preview_images_method w3m` to your `~/.config/ranger/rc.conf`.
- Restart ranger and navigate to an image file.

#### with iTerm2

> NOTE: You need at least iTerm2 version 2.9 for the image preview feature to work.

- Add the line `set preview_images true` to your `~/.config/ranger/rc.conf`.
- Add the line `set preview_images_method iterm2` to your `~/.config/ranger/rc.conf`.
- Restart ranger and navigate to an image file.
