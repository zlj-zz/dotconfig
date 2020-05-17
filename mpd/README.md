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

`rc-update add mpd default`
