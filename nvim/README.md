# This is my neovim

![demo](https://img-blog.csdnimg.cn/20200512091003564.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM4NDEwNDk0,size_16,color_FFFFFF,t_70) 

# After Installation, You Need To

Install `pynvim` (pip)

Install `nodejs`, and do `npm install -g neovim`

Install nerd-fonts (actually it's optional)

# After Installation, You Might Want To

### First of all

Do `:checkhealth`

### For Python Debugger (via `vimspector`)

Install `debugpy` (`pip`)

### Config Python path

Well, make sure you have python

### For Taglist:

Install `ctags` for function/class/variable list

### For FZF

Install `fzf`

Install `ag` (`the_silver_searcher`)

### And also...

Install `figlet` for inputing text ASCII art

Install `xclip` for system clipboard access (Linux and `xorg` only)

# Keyboard Shortcuts

let `<LEADER>` to be `<space>`.

let `S` to save file (same as command `:w`).

let `Q` to quit (same as command `:q`).

In normal mode make `Y` to copy till the end of the line (same as `y$`).

In visual mode make `Y` copy to system clipboard (same as `"+y`).

let `ctrl+a` to select all (same as `ggVG`).

### Curosr movement

| ←   | ↓   | ↑   | →   |
|-----|-----|-----|-----|
| `h` | `j` | `k` | `l` |

`gj` and `gk` move line by line if the text wraps.

### Remapped cursor movement

| shortcut   | action                                                    | equavilent |
|------------|-----------------------------------------------------------|------------|
| `K`        | cursor up 7 lines                                         | `7k`       |
| `J`        | cursor down 7 lines                                       | `7j`       |
| `H`        | cursor left 5 chars                                       | `5h`       |
| `L`        | cursor right 5 chars                                      | `5l`       |
| `ctrl`+`K` | move the view port up 5 lines without moving the cursor   | `5<c-y>`   |
| `ctrl`+`J` | move the view port down 5 lines without moving the cursor | `5<c-e>`   |
| `alt`+`h`  | ← in insert mode                                          | `<left>`   |
| `alt`+`j`  | ↓ in insert mode                                          | `<down>`   |
| `alt`+`k`  | ↑ in insert mode                                          | `<up>`     |
| `alt`+`l`  | → in insert mode                                          | `<right>`  |
| `alt`+`a`  | move cursor to head in insert mode                        | `<home>`   |
| `alt`+`s`  | move cursor to tail in insert mode                        | `<end>`    |
| `#`        | move cursor to head                                       | `0`        |

### Remapped commands in Normal Mode

| shortcut           | action                             |
|--------------------|------------------------------------|
| `<`                | un-indent                          |
| `>`                | indent                             |
| `<LEADER><LEADER>` | goto the next placeholder (`<++>`) |
| `<LEADER><Enter>`  | cancel the highligh search         |
| `<LEADER>sc`       | spelling check toggle              |
| `<LEADER>fd`       | find two same word                 |
| `<LEADER>rc`       | open the neovim config anytime     |
| `rc`               | resource neovim config             |
| `<LEADER>cn`       | comment a line                     |
| `<LEADER>cu`       | uncomment a line                   |

### Window management

| shortcut | action                            |  | shortcut | action                             |
|----------|-----------------------------------|--|----------|------------------------------------|
| `sh`     | split window to the left          |  | `th`     | move cursor to the left window     |
| `sj`     | split window to the down          |  | `tj`     | move cursor to the down window     |
| `sk`     | split window to the up            |  | `tk`     | move cursor to the up window       |
| `sl`     | split window to the right         |  | `tl`     | move cursor to the right window    |
| `ch`     | place the two screens up and down |  | `cv`     | place the two screens side by side |



### Tab management

| shortcut   | action           |
|------------|------------------|
| `ctrl`+`t` | create a new tab |
| `t-`       | previous tab     |
| `t=`       | next previous    |

### Other

`c-z` makes **vim** hang and enter **shell**, `fg` returns **vim** form **shell**.

`dip` clear the black lien around the current cursor.

`c-F` use **fzf**. `da=` to delete current line what's after `=`.

`ra` use **ranger** in neovim.

# Plugin

## Coc

**complete** 

![coc-complete](https://img-blog.csdnimg.cn/202005112344456.gif) 

| shortcut          | action        |
|-------------------|---------------|
| `<tab>`           | next item     |
| `<shift>`+`<tab>` | previous item |
| `<enter>`         | select item   |

**snippet** 

![coc-snippet](https://img-blog.csdnimg.cn/20200512090039297.gif) 

| shortcut | action                       |
|----------|------------------------------|
| `<c-j>`  | trigger snippet expand       |
| `<c-j>`  | jump to next placeholder     |
| `<c-k>`  | jump to previous placeholder |

**coding** 

| shortcut | action                  |
|----------|-------------------------|
| `gd`     | jump to definition      |
| `gt`     | jump to type definition |
| `gi`     | jump to implementation  |
| `gr`     | jump to references      |
| `rn`     | symbol renaming         |

**explorer** 

| shortcut  | action               |  | shortcut | action        |  | shortcut | action         |
|-----------|----------------------|--|----------|---------------|--|----------|----------------|
| `tt`      | coc-explorer toggle  |  | `p`      | paste file    |  | `y`      | copy file path |
| `k`and`j` | up and down          |  | `d`      | delete        |  | `Y`      | copy file name |
| `h`and`l` | collapse and expand  |  | `a`      | add file      |  | `c`      | copy file      |
| `e`       | open file            |  | `A`      | add directory |  | `x`      | cut file       |
| `s`and`E` | open split or vsplit |  | `r`      | rename        |  | `f`      | search         |
| `t`       | open in new tab      |  | `.`      | toggleHidden  |  | `R`      | refresh        |
| `q`       | quit                 |  | `?`      | help          |  |          |                |

## vim-visual-multi

It can help you realize the function of multi-cursor.

You can use `ctrl` + `← ↓ ↑ →` to select cursor position. Use `i` or `I` to insert character.

To remove a cursor, use `q`. `u` to undo, `ctrl` + `r` to redo, like vim native.

## vim-easymotion

Fast move you cursor, use `'` easymotion

![vim-easymotion](https://img-blog.csdnimg.cn/20200512164720342.gif) 

## vim-startify

Enter `F5` to open a new tab and running Startify.

First start will generate 5 temporary file with suffixes of `.c`, `.java`, `.py`, `.js`, `.html`, `.css`.

![vim-startup](https://img-blog.csdnimg.cn/20200512234641826.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM4NDEwNDk0,size_16,color_FFFFFF,t_70) 

## vim-keysound

*make your vim a typewriter*

You should do:
```shell
pip install pysdl2

sudo pacman -S sdl sdl-mixer
```





