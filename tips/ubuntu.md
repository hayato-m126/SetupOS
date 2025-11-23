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

## そもそもWindows領域にローダーをインストールさせない

インストール時にマニュアルでubuntu専用のディスクをパーティションニングして、ローダーをそのディスクにする

ESPに512MB, 残り/でEXT4

## インストール後の起動で止まる

grubでnomodesetを追加して起動する

<https://www.dell.com/support/kbdoc/ja-jp/000123893/linux%E3%81%A7nomodeset%E3%82%AB%E3%83%BC%E3%83%8D%E3%83%AB-%E3%83%96%E3%83%BC%E3%83%88-%E3%83%A9%E3%82%A4%E3%83%B3-%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E6%89%8B%E5%8B%95%E3%81%A7%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95>
