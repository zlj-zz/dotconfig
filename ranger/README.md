# Ranger

You can from [here](https://github.com/ranger/ranger)(**ranger github**) know more.

## Settings

Show hidden file by default. Show line number by default.

- If you want to preview pictures, remember to install `w3m`.
- If you want to preview vedio, remember to install `ffmpegthumbnailer`. It's used to generate a thumbnail of a vedio.
- If you want to compressed file, you should install `stool`.

Many operations are the same as `vim`.


### Cursor movement

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

### File operation

| shortcut | action                                           |
|----------|--------------------------------------------------|
| `e`      | edit                                             |
| `q`/`Q`  | quit / quit all                                  |
| `a`      | rename                                           |
| `cw`     | batch rename                                     |
| `T`      | touch file                                       |
| `f`      | ftsea (real-time search under the current path ) |
| `F`      | start `fzf` select                               |
| `C`      | compressed files (`.rar` `.tar.gz` `.zip` `.7z`) |
| `X`      | unzip files                                      |
| `S`      | reach the current path                           |
| `v`      | select all                                       |
| `zh`     | show hidden files toggle                         |

### Command operation

| shortcut   | action     |
|------------|------------|
| `:` or `;` | console    |
| `V`        | sudo nvim  |
| `R`        | reload cwd |
| `o`        | sort file  |
| `z`        | settings   |

### Window management

| shortcut      | action                 |
|---------------|------------------------|
| `ctrl`+`n`    | new tab                |
| `ctrl`+`w`    | close tab              |
| `tab`         | next tab               |
| `shift`+`tab` | previous tab           |
| `'`+`<any>`   | enter bookmark `<any>` |
| `m`+`<any>`   | set bookmark `<any>`   |
| `um`+`<any>`  | unset bookmark `<any>` |

---

## Ranger Devicons plugin 

This plugin introduces a new linemode that prefixes file names with a file icon, [here](https://github.com/alexanderjeurissen/ranger_devicons) is its address.

This plugin uses glyphs from a patched NERDfont
the plugin
```shell
sudo pacman -S nerd-fonts-complete
sudo pacman -S adobe-source-code-pro-fonts
```

