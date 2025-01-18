# apt

aptのエラーを修復する

## /var/lib/apt/lists/ をロックできません

<https://qiita.com/koara-local/items/e63b7e4ff3cea803bdea>

lockのディレクトリを消すと治る

```shell
❯ sudo apt update
パッケージリストを読み込んでいます... 完了
E: Could not get lock /var/lib/apt/lists/lock. It is held by process 1426 (packagekitd)
N: Be aware that removing the lock file is not a solution and may break your system.
E: ディレクトリ /var/lib/apt/lists/ をロックできません

❯ sudo rm /var/lib/apt/lists/lock
❯ sudo rm /var/lib/dpkg/lock

❯ sudo apt update
ヒット:1 http://archive.ubuntulinux.jp/ubuntu jammy InRelease
ヒット:2 http://archive.ubuntulinux.jp/ubuntu-ja-non-free jammy InRelease
```

## 不正なヘッダ行です 不正なヘッダです

<https://github.com/microsoft/vscode/issues/226935>

clean autocleanで治る

```shell
❯ sudo apt update
ヒット:1 http://archive.ubuntulinux.jp/ubuntu jammy InRelease
ヒット:2 http://archive.ubuntulinux.jp/ubuntu-ja-non-free jammy InRelease
無視:3 https://packages.microsoft.com/repos/edge stable InRelease
無視:4 https://packages.microsoft.com/repos/code stable InRelease
取得:5 https://dl.google.com/linux/chrome/deb stable InRelease [1,825 B]
取得:6 https://dl.google.com/linux/chrome/deb stable/main amd64 Packages [1,228 B]
ヒット:7 http://packages.ros.org/ros2/ubuntu jammy InRelease
ヒット:9 http://jp.archive.ubuntu.com/ubuntu jammy InRelease
無視:10 https://s3.amazonaws.com/autonomoustuff-repo jammy InRelease
取得:11 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
ヒット:12 https://s3.amazonaws.com/autonomoustuff-repo jammy Release
無視:13 https://s3.amazonaws.com/autonomoustuff-repo jammy Release.gpg
無視:3 https://packages.microsoft.com/repos/edge stable InRelease
無視:4 https://packages.microsoft.com/repos/code stable InRelease
ヒット:8 https://packagecloud.io/slacktechnologies/slack/debian jessie InRelease
ヒット:14 http://lenovo.archive.canonical.com jammy InRelease
取得:15 http://security.ubuntu.com/ubuntu jammy-security/main amd64 DEP-11 Metadata [43.1 kB]
取得:16 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 DEP-11 Metadata [208 B]
取得:17 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 DEP-11 Metadata [126 kB]
取得:18 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 DEP-11 Metadata [208 B]
取得:19 http://jp.archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
ヒット:20 https://ppa.launchpadcontent.net/danielrichter2007/grub-customizer/ubuntu jammy InRelease
ヒット:21 https://ppa.launchpadcontent.net/fish-shell/release-3/ubuntu jammy InRelease
無視:3 https://packages.microsoft.com/repos/edge stable InRelease
取得:22 http://jp.archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
無視:4 https://packages.microsoft.com/repos/code stable InRelease
取得:23 http://jp.archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [2,146 kB]
取得:24 http://jp.archive.ubuntu.com/ubuntu jammy-updates/main i386 Packages [718 kB]
取得:25 http://jp.archive.ubuntu.com/ubuntu jammy-updates/main Translation-en [367 kB]
取得:26 http://jp.archive.ubuntu.com/ubuntu jammy-updates/main amd64 DEP-11 Metadata [103 kB]
取得:27 http://jp.archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [2,633 kB]
取得:28 http://jp.archive.ubuntu.com/ubuntu jammy-updates/restricted Translation-en [455 kB]
取得:29 http://jp.archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 DEP-11 Metadata [212 B]
取得:30 http://jp.archive.ubuntu.com/ubuntu jammy-updates/universe i386 Packages [738 kB]
取得:31 http://jp.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1,134 kB]
取得:32 http://jp.archive.ubuntu.com/ubuntu jammy-updates/universe Translation-en [265 kB]
取得:33 http://jp.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 DEP-11 Metadata [356 kB]
取得:34 http://jp.archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 DEP-11 Metadata [940 B]
取得:35 http://jp.archive.ubuntu.com/ubuntu jammy-backports/main amd64 DEP-11 Metadata [5,316 B]
取得:36 http://jp.archive.ubuntu.com/ubuntu jammy-backports/restricted amd64 DEP-11 Metadata [212 B]
取得:37 http://jp.archive.ubuntu.com/ubuntu jammy-backports/universe amd64 DEP-11 Metadata [23.1 kB]
取得:38 http://jp.archive.ubuntu.com/ubuntu jammy-backports/multiverse amd64 DEP-11 Metadata [212 B]
エラー:3 https://packages.microsoft.com/repos/edge stable InRelease
  不正なヘッダ行です 不正なヘッダです [IP: 13.107.246.46 443]
エラー:4 https://packages.microsoft.com/repos/code stable InRelease
  不正なヘッダ行です 不正なヘッダです [IP: 13.107.246.46 443]
384 kB を 8秒 で取得しました (49.8 kB/s)
パッケージリストを読み込んでいます... 完了
依存関係ツリーを作成しています... 完了
状態情報を読み取っています... 完了
アップグレードできるパッケージが 10 個あります。表示するには 'apt list --upgradable' を実行してください。
W: http://archive.ubuntulinux.jp/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: http://archive.ubuntulinux.jp/ubuntu-ja-non-free/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: https://ppa.launchpadcontent.net/danielrichter2007/grub-customizer/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: https://ppa.launchpadcontent.net/fish-shell/release-3/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: https://packages.microsoft.com/repos/edge/dists/stable/InRelease の取得に失敗しました  不正なヘッダ行です 不正なヘッダです [IP: 13.107.246.46 443]
W: https://packages.microsoft.com/repos/code/dists/stable/InRelease の取得に失敗しました  不正なヘッダ行です 不正なヘッダです [IP: 13.107.246.46 443]
W: いくつかのインデックスファイルのダウンロードに失敗しました。これらは無視されるか、古いものが代わりに使われます。

~ 8s
❯ sudo apt clean && sudo apt autoclean && sudo apt update
パッケージリストを読み込んでいます... 完了
依存関係ツリーを作成しています... 完了
状態情報を読み取っています... 完了
ヒット:1 http://archive.ubuntulinux.jp/ubuntu jammy InRelease
ヒット:2 http://archive.ubuntulinux.jp/ubuntu-ja-non-free jammy InRelease
取得:3 https://packages.microsoft.com/repos/edge stable InRelease [3,590 B]
取得:4 https://packages.microsoft.com/repos/code stable InRelease [3,590 B]
ヒット:5 https://dl.google.com/linux/chrome/deb stable InRelease
取得:6 https://packages.microsoft.com/repos/edge stable/main amd64 Packages [12.7 kB]
ヒット:7 http://security.ubuntu.com/ubuntu jammy-security InRelease
ヒット:8 http://packages.ros.org/ros2/ubuntu jammy InRelease
取得:9 https://packages.microsoft.com/repos/code stable/main armhf Packages [19.0 kB]
取得:10 https://packages.microsoft.com/repos/code stable/main arm64 Packages [18.9 kB]
取得:11 https://packages.microsoft.com/repos/code stable/main amd64 Packages [18.8 kB]
ヒット:12 http://lenovo.archive.canonical.com jammy InRelease
無視:14 https://s3.amazonaws.com/autonomoustuff-repo jammy InRelease
ヒット:15 https://s3.amazonaws.com/autonomoustuff-repo jammy Release
ヒット:16 http://jp.archive.ubuntu.com/ubuntu jammy InRelease
無視:17 https://s3.amazonaws.com/autonomoustuff-repo jammy Release.gpg
ヒット:13 https://packagecloud.io/slacktechnologies/slack/debian jessie InRelease
ヒット:18 http://jp.archive.ubuntu.com/ubuntu jammy-updates InRelease
ヒット:19 http://jp.archive.ubuntu.com/ubuntu jammy-backports InRelease
ヒット:20 https://ppa.launchpadcontent.net/danielrichter2007/grub-customizer/ubuntu jammy InRelease
ヒット:21 https://ppa.launchpadcontent.net/fish-shell/release-3/ubuntu jammy InRelease
76.6 kB を 2秒 で取得しました (32.6 kB/s)
パッケージリストを読み込んでいます... 完了
依存関係ツリーを作成しています... 完了
状態情報を読み取っています... 完了
アップグレードできるパッケージが 10 個あります。表示するには 'apt list --upgradable' を実行してください。
W: http://archive.ubuntulinux.jp/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: http://archive.ubuntulinux.jp/ubuntu-ja-non-free/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: https://ppa.launchpadcontent.net/danielrichter2007/grub-customizer/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: https://ppa.launchpadcontent.net/fish-shell/release-3/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
```

## Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details

キーを調べて、変換することで修正する

```shell
❯ sudo apt-key list
Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
/etc/apt/trusted.gpg
--------------------
pub   rsa1024 2009-04-05 [SC]
      5967 6CBC F5DF D8C1 CEFE  375B 68B5 F60D CDC1 D865
uid           [  不明  ] Launchpad PPA for Ubuntu Japanese Team

pub   dsa1024 2005-05-24 [SC]
      3B59 3C7B E6DB 6A89 FB7C  BFFD 058A 05E9 0C4E CFEC
uid           [  不明  ] Ubuntu-ja Archive Automatic Signing Key <archive@ubuntulinux.jp>
sub   elg2048 2005-05-24 [E]

pub   rsa4096 2024-05-03 [SC]
      8842 1E70 3EDC 7AF5 4967  DED4 73C9 FCC9 E2BB 48DA
uid           [  不明  ] Launchpad PPA for Fish shell maintainers

pub   rsa4096 2024-05-02 [SC]
      7EDB 2B9A EE07 57D7 87DF  FC20 14BE BC73 63BD C51E
uid           [  不明  ] Launchpad PPA for Daniel Richter

pub   dsa1024 2007-03-08 [SC]
      4CCA 1EAF 950C EE4A B839  76DC A040 830F 7FAC 5991
uid           [  不明  ] Google, Inc. Linux Package Signing Key <linux-packages-keymaster@google.com>
sub   elg2048 2007-03-08 [E]

pub   rsa2048 2015-10-28 [SC]
      BC52 8686 B50D 79E3 39D3  721C EB3E 94AD BE12 29CF
uid           [  不明  ] Microsoft (Release signing) <gpgsecurity@microsoft.com>

pub   rsa4096 2017-02-22 [SCEA]
      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid           [  不明  ] Docker Release (CE deb) <docker@docker.com>
sub   rsa4096 2017-02-22 [S]


❯ sudo apt-key export 'CDC1D865' | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/ubuntu-jp-team.gpg
❯ sudo apt-key export '0C4ECFEC' | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/ubuntu-ja-archive.gpg
❯ sudo apt-key export 'E2BB48DA' | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/fish-shell.gpg
❯ sudo apt-key export '63BDC51E' | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/grub-customizer.gpg
❯ sudo apt-key export '0EBFCD88' | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/docker.gpg


❯ sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.backup
❯ sudo rm /etc/apt/trusted.gpg

❯ sudo apt update
```
