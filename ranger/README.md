# Ranger

[ranger github](https://github.com/ranger/ranger) 

## Ranger Devicons plugin 

This plugin introduces a new linemode that prefixes file names with a file icon

[url](https://github.com/alexanderjeurissen/ranger_devicons) 

This plugin uses glyphs from a patched NERDfont
the plugin
```shell
sudo pacman -S nerd-fonts-complete
sudo pacman -S adobe-source-code-pro-fonts
```

## Settings

Show hidden file by default. Show line number by default.

If you want to preview pictures, remember to install `w3m`. If you want to compressed file, you should install `stool`.

Many operations are the same as `vim`.


### cursor movement

| shortcut  | action                     |
|-----------|----------------------------|
| `j`       | move cursor down 1 line    |
| `k`       | move cursor up 1 line      |
| `h`       | move cursor left 1 line    |
| `l`       | move cursor right 1 line   |
| `J`       | move cursor down 5 line    |
| `K`       | move cursor up 5 line      |
| `alt`+`j` | scroll preview down 1 line |
| `alt`+`k` | scroll preview up 1 line   |
| `[`       | parent up 1 line           |
| `]`       | parent down 1 line         |
| `H`       | prevous history            |
| `L`       | next history               |

### File operation

| shortcut      | action                 |
|---------------|------------------------|
| `e`           | edit                   |
| `q`           | quit                   |
| `Q`           | quit all               |
| `a`           | rename                 |
| `T`           | touch file             |
| `ctrl`+`n`    | new tab                |
| `ctrl`+`w`    | close tab              |
| `tab`         | next tab               |
| `shift`+`tab` | previous tab           |
| `'`+`<any>`   | enter bookmark `<any>` |
| `m`+`<any>`   | set bookmark `<any>`   |
| `um`+`<any>`  | unset bookmark `<any>` |
| `f`           | ftsea                  |
| `F`           | start `fzf` select     |

### Command operation

| shortcut   | action     |
|------------|------------|
| `:` or `;` | console    |
| `V`        | sudo nvim  |
| `R`        | reload cwd |
| `o`        | sort file  |
| `z`        | settings   |

