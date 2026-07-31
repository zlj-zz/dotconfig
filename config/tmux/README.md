# My tmux config

Install (links `~/.tmux.conf` and clones Catppuccin):

```bash
./install.sh
```

Or manually: `ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf`

- Primary prefix: `C-b` (native)
- Secondary prefix: `C-x`
- Status theme: [Catppuccin](https://github.com/catppuccin/tmux) Frappé (`plugins/` is installed by `install.sh`, not committed)

`exit` / `C-d` closes a pane; `Prefix d` detaches the session.

## Keymap

> Need the `prefix` first, then the key below.

**session:**

| bind  | function                |
| ----- | ----------------------- |
| `c-c` | new session             |
| `c-d` | kill session            |
| `c-f` | find and switch session |
| `s`   | choose session          |
| `S`   | toggle status bar       |
| `$`   | rename session          |

**pane:**

| bind            | function                            |
| --------------- | ----------------------------------- |
| `-`             | split top/bottom                    |
| `\|`            | split left/right                    |
| `=`             | choose buffer                       |
| `x`             | close current pane                  |
| `h` `j` `k` `l` | move between panes                  |
| `>` `<`         | swap panes                          |
| `H` `J` `K` `L` | resize pane                         |
| `!`             | break pane into window              |
| `@`             | join pane (choose-tree preview)     |
| `z`             | zoom / unzoom pane                  |

**window:**

| bind    | function             |
| ------- | -------------------- |
| `c`     | new window (prompt for name) |
| `0`-`9` | select window        |
| `w`     | show window list     |
| `n` `p` | next / previous      |
| `Tab`   | last window          |
| `&`     | close window         |
| `,`     | rename window        |

**other:**

| bind | function              |
| ---- | --------------------- |
| `Y`  | open yazi in new pane |
| `g`  | extrakto (pick text)  |
| `r`  | reload config         |
| `e`  | edit config           |
