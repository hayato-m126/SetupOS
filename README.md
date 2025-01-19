# Setup OS

setup OS using ansible

## notice

aptに以下のようなwarningがある状態で実行するとprivilege output closed while waiting for password promptというようなよくわからないエラーが出ることがある。
先にaptの修正をする。

```shell
W: https://packages.microsoft.com/repos/vscode/dists/stable/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: http://archive.ubuntulinux.jp/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: http://archive.ubuntulinux.jp/ubuntu-ja-non-free/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
W: ターゲット Packages (main/binary-amd64/Packages) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット Packages (main/binary-all/Packages) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット Translations (main/i18n/Translation-ja_JP) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット Translations (main/i18n/Translation-ja) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット Translations (main/i18n/Translation-en) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット DEP-11 (main/dep11/Components-amd64.yml) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット DEP-11 (main/dep11/Components-all.yml) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット DEP-11-icons-small (main/dep11/icons-48x48.tar) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット DEP-11-icons (main/dep11/icons-64x64.tar) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット DEP-11-icons-hidpi (main/dep11/icons-64x64@2.tar) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット CNF (main/cnf/Commands-amd64) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
W: ターゲット CNF (main/cnf/Commands-all) は /etc/apt/sources.list.d/google-chrome.list:3 と /etc/apt/sources.list.d/google-chrome.list:4 で複数回設定されています
```

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
