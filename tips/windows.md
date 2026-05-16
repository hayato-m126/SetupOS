# windows

mac, ubuntu, windowsを併用するためのtips

## 変換無変換で入力を切り替える

<https://www.ichimonji-san.com/how-to-switch-ime-into-jp-mode-like-mac/>

### google日本語入力

直接入力 ：Henkan → IMEを有効化（デフォは再変換）
変換前入力中：Muhenkan → IMEを無効化
変換前入力中：Henkan → IMEを有効化（デフォは変換）
変換中：Muhenkan → IMEを無効化（デフォはひらがなカタカナを切り替え）
変換中：Henkan → IMEを有効化（デフォは次の候補）
入力文字なし ：Muhenkan → IMEを無効化（デフォは次のかな文字種に入力切替）
入力文字なし ：Henkan → IMEを有効化（デフォは再変換）
直接入力：Hiragana → 再変換（デフォはIMEを有効化）
直接入力：Katakana → 再変換（デフォはIMEを有効化）
入力文字なし：Hiragana → 再変換（デフォはひらがなに入力切り替え）
入力文字なし：Katakana → 再変換（デフォは全角カタカナに入力切替）

## スタートメニューのディレクトリ

```shell
C:\Users\<ユーザー名>\AppData\Roaming\Microsoft\Windows\Start Menu
C:\ProgramData\Microsoft\Windows\Start Menu\Programs
```

エクスプローラに以下のように打つと表示できる

```shell
shell:AppsFolder
```

## windows の右クリックメニュー

```shell
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
```

## Ubuntuとのデュアルブート解除後にEFIにubuntuのローダーが残る

WindowsのEFIパーティションにEFI/ubuntuというののが残っている
USB bootのubuntuでパーティションをマウントして丸ごと消す。

```shell
mkdir mnt
cd mnt
sudo mount -t vfat /dev/nvme0n1p1 . -o uid=$(id -u),gid=$(id -g),umask=022
cd EFI
sudo rm -rf ubuntu
```

Windows側でコマンドうってエントリーを消す。
PowerShellで実施するときはダブルクォートで括る

```shell
bcdedit /enum firmware

identifier              {cf26aa51-b179-11ef-98d4-806e6f6e6963}
device                  partition=\Device\HardDiskVolume1
path                    \EFI\ubuntu\shimx64.efi
description             ubuntu

# bcdedit /delete {id}
bcdedit /delete {cf26aa51-b179-11ef-98d4-806e6f6e6963}

# PowerShell
bcdedit /delete "{cf26aa51-b179-11ef-98d4-806e6f6e6963}"
```
