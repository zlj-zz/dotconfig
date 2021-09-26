# My zsh

This is my zsh configuration. I like it every much, it's awesome.

And I use **zim** to manage my plug-ins. If you want to use this, you should put it in `~/.config/`

## [Only install my zsh]

> You can check `zimrc.zsh` to see the all plug-ins I using.
> And you maybe need modify `env.zsh`

```shell
git clone -dep 1 https://github.com/zlj-zz/dotconfig.git
cd dotconfig

cp -r ./zsh ~/.config/zsh && cd ~/.config/zsh
./plugins.zsh

zimfw install
```

---
