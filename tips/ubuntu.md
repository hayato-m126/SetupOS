# ubuntu

ubuntuのtips

## インストール時にインストーラーが見切れる

GPUがサポートされていないと800 \* 600になる。
VirtualBoxなどでも同様

この状態だと、インストーラの右下の部分が見れない。

Alt + F7を押すとドラッグできる

<https://qiita.com/baggio/items/06e4132e5e0693c4b7ce>

## デュアルブート解除後にEFIにubuntuのローダーが残る

WindowsのEFIパーティションにEFI/ubuntuというののが残っている

USB bootのubuntuでパーティションをマウントして丸ごと消す。

Windows側でコマンドうってエントリーを消す

```shell
bcdedit /enum firmware

identifier              {cf26aa51-b179-11ef-98d4-806e6f6e6963}
device                  partition=\Device\HardDiskVolume1
path                    \EFI\ubuntu\shimx64.efi
description             ubuntu

# bcdedit /delete {id}
bcdedit /delete {cf26aa51-b179-11ef-98d4-806e6f6e6963}
```
