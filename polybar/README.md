# Polybar

here is my polybar configurarion. If you want to use, you should verify `config`.

## **Display** 

![demo](./polybar-demo.png) 

## **Proposed changes** 

#### 1. verify network setting

Check your network card information.

```shell
ifconfig
```

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

Verify `config`

```bash
[module/wlan]
type = internal/network
interface = wlp0s20f3

[module/eth]
type = internal/network
interface = enp4s0
```

#### 2. install `xbacklight` to adjust the backlight.

```shell
sudo pacman -S xbacklight
```






