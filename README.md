# Setup OS

setup OS using ansible

## Support OS

- Ubuntu 22.04 / 24.04 LTS
- macOS Sonoma / Sequoia

## how to create Ubuntu install media

### Ubuntu

usb-creator-gtk

```shell
sudo apt install usb-creator-gtk
```

### Windows

<https://rufus.ie/ja/>

## how to run

事前にgithub_rsaをコピーしておく

```shell
./setup.sh
```

## known issue for 24.04

### chrome-remote-desktop

24.04でchrome-remote-desktopを設定すると、リモートではログインできるが、ディスプレイつけてローカルでログインしようとするとできない。

session already running　と出る。

<https://askubuntu.com/questions/1516121/cant-login-session-already-running>
