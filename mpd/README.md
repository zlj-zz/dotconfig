# MPD to listen music

>The music player daemon (MPD) is a flexible and powerful server-side application for playing music. Through plug-ins and libraries, it can play various sound files and is controlled by its network protocol. In order to interact with mpd, a client program is required. The most commonly used client applications are:
>- **ncmpccpp**: almost completely cloned ncmpc, which contains some new functions written in C++
>- **ncmpc**: mpd Ncurses client
>- **mpc**: command line user interface of the mpd server


- install **MPD** `sudo pacman -S mpd`
- install client, I use **ncmpc** `sudo pacman -S ncmpc`
- move the directory to `~/.config`
- execute **init** file, `sh init.sh`
- you can refer to `/usr/share/doc/mpd/mpdconf.example`

<u>You may need to change the `music_directory` in the configuration to yours.</u>


# Problem

- [x] **If the port is modified in the configuration file**.

    A: you need to set the port when connecting, like: `ncmpc -p 6666`. And I recommend using `-C` to disable color.

- [x] **To auto-start MPD upon login, type.**

    A: `systemctl --user enable mpd`.

- [x] **TO auto-start MPD on tty login.**

    A: add the following to `~/.profile` or anthor autostart file.
    ```bash
    # MPD daemon start (if no other user instance exists)
    [ ! -s ~/.config/mpd/pid ] && mpd
    ```


