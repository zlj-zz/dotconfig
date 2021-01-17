## My tmux config

you should place the file in `~`, or `ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf`

let `prefix` be `c-x`, and resered `c-b`

You may should install `rainbarf`.

`c-d` exit TMUX.

**session:**

| bind  | function    |
| ----- | ----------- |
| `c-c` | new session |

**pane:**

| bind            | function                               |
| --------------- | -------------------------------------- |
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
| ------- | ----------------------- |
| `c`     | new window              |
| `0`-`9` | select window           |
| `w`     | show window list        |
| `n`     | move to next window     |
| `p`     | move to previous window |
| `&`     | close current window    |
| `,`     | rename current widow    |

**other:**

| bind | function                   |
| ---- | -------------------------- |
| `!`  | split widow and open htop  |
| `@`  | split widow and open range |
| `s`  | toggle status bar          |

**change statue bar:**

If you want to change the botton bar state, you can check the `./tmux-powerline/themes/default.sh` and modify it.

![statue](https://img-blog.csdnimg.cn/20200923150050560.png)
