# WSL Setup

WSLでubuntuの日本語環境を作る。

## TIPS

vscodeはWindows側に入れて、WSLのプラグイン入れておけばおｋ
wsl側にいれると以下のように出る。

```shell
hyt@DESKTOP-NSL7IRJ:~$ code .
To use Visual Studio Code with the Windows Subsystem for Linux, please install Visual Studio Code in Windows and uninstall the Linux version in WSL. You can then use the `code` command in a WSL terminal just as you would in a normal command prompt.
Do you want to continue anyway? [y/N] y
To no longer see this prompt, start Visual Studio Code with the environment variable DONT_PROMPT_WSL_INSTALL defined.
```

## use gh in wsl

```shell
export BROWSER="/mnt/c/Program\ Files\ (x86)/Microsoft/Edge/Application/msedge.exe"
gh auth login --web
# use windows browser
```

ghのログイン情報移行するには、ghの設定ファイルだけコピーしてくればOK

```shel
$HOME/.config/gh
```
