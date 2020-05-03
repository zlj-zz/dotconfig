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

### Window management

| shortcut | action                             |
|----------|------------------------------------|
| `sh`     | split window to the left           |
| `sj`     | split window to the down           |
| `sk`     | split window to the up             |
| `sl`     | split window to the right          |
| `th`     | move cursor to the left window     |
| `tj`     | move cursor to the down window     |
| `tk`     | move cursor to the up window       |
| `tl`     | move cursor to the right window    |
| `ch`     | place the two screens up and down  |
| `cv`     | place the two screens side by side |


### Tab management

| shortcut   | action           |
|------------|------------------|
| `ctrl`+`t` | create a new tab |
| `t-`       | previous tab     |
| `t=`       | next previous    |
