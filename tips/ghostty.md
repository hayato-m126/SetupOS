# ghostty

ghosttyのtips

## sudoだとnanoが開かない

```shell
hyt@hyt-u24:~$ sudo nano /etc/apt/sources.list.d/download_docker_com_linux_ubuntu.list
Error opening terminal: xterm-ghostty.
```

### 解決策

```shell
infocmp -x xterm-ghostty | sudo tic -x -
```
