# wsl

wslのtips

## インストール

wslコマンドでディストリビューションを入れる方法と、Windows Storeからいれる方法がある。
インストールの仕方によって、VMの仮想ディスクが作られる場所が異なる。
また、アンインストール時の手順も異なる

### コマンドインストール

```shell
wsl --install
wsl --list --online
wsl --install Ubuntu-24.04
```

以下に、VMの仮想ディスクが作られる

```shell
C:\Users\hyt\AppData\Local\wsl\${UUID}\ext4.vhdx
```

### Windows Storeからインストール

```shell
C:\Users\hyt\AppData\Local\Packages\CanonicalGroupLimited.UbuntuXX.XXonWindows
```

### アンインストール

<https://qiita.com/zakoken/items/61141df6aeae9e3f8e36#3-wsl2-%E3%81%AE%E3%82%A2%E3%83%B3%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E6%96%B9%E6%B3%95>

コマンドで入れた場合には、以下で仮想ディスクの削除まで行われる

vscodeでwslのディレクトリ開いてるとshutdownしないので注意

```shell
wsl -l -v
wsl --shutdown
wsl --unregister Ubuntu-24.04
```

Windows Storeから入れた場合は、アプリの削除からUbuntu 24.04を削除する。
アプリの削除まで行った段階で、vhdが削除される
