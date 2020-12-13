# Polybar

Here is my polybar configurarion. If you want to use, you should modify `[config]`.

## Display My bar

![demo](https://img-blog.csdnimg.cn/20200608150728193.png)

## Proposed changes

- **verify network setting**

  Check your network card information. Command: `ifconfig`.

  Like this:

  ```
  enp4s0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
          ether f8:75:a4:26:e8:72  txqueuelen 1000  (Ethernet)
          RX packets 0  bytes 0 (0.0 B)
          RX errors 0  dropped 0  overruns 0  frame 0
          TX packets 0  bytes 0 (0.0 B)
          TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

  wlp0s20f3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
          inet 192.168.31.215  netmask 255.255.255.0  broadcast 192.168.31.255
          inet6 fe80::cb96:eb45:2102:935a  prefixlen 64  scopeid 0x20<link>
          ether e2:b4:fb:6c:4c:f6  txqueuelen 1000  (Ethernet)
          RX packets 4002803  bytes 3187135654 (2.9 GiB)
          RX errors 0  dropped 9  overruns 0  frame 0
          TX packets 1300150  bytes 221681555 (211.4 MiB)
          TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
  ```

  modify `config`

  ```dosini
  [config]
  network-wlan = wlp0s20f3
  network-eth = enp4s0
  ```

- **install `xbacklight` to adjust the backlight.**

  ```shell
  sudo pacman -S xbacklight
  ```

- **You can modify the _CPU_ or _MEMORY_ icon.**

  ```dosini
  [config]
  cpu-icon = ...
  memory-icon = ...
  ```

- **Use the github module.**

  GitHub personal token, generate from [here](https://github.com/settings/tokens/new?scopes=notifications&description=Notifier+for+Polybar)

  ```dosini
  [config]
  github-token = <your token>
  ```

## Icon

If you want to change **icon**, I recommend going [https://fontawesome.com/cheatsheet/free/solid](https://fontawesome.com/cheatsheet/free/solid).

```

```
