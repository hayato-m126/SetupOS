# antigravityのtips

antigravityのtips

## 拡張機能のストア変更

```shell
Marketplace Item URL:
https://marketplace.visualstudio.com/items
Marketplace Gallery URL:
https://marketplace.visualstudio.com/_apis/public/gallery
```

<https://zenn.dev/iwatagumi/articles/9d143653579ab8>

## 設定を消してきれいな状態にする

vscode importやって、なんか汚くなっちゃったときなどにやる

### Mac

```shell
rm -rf ~/.antigravity
rm ~/.gemini/GEMINI.md
rm -rf ~/.gemini/antigravity
rm -rf ~/Library/Application\ Support/Antigravity
```

### Windows

```shell
# powershell
rm $env:APPDATA\Antigravity
rm $env:USERPROFILE\.antigravity
rm $env:USERPROFILE\.gemini
```

### Ubuntu

```shell
rm -rf ~/.antigravity
rm -rf ~/.gemini
rm -rf ~/.config/Antigravity
```

## コマンドライン

インストール時にcommand lineを追加にチェックが入ってるとagyコマンドが使えるようになる。

.zshrcにantigravityのpathが追加されるだけ。インストーラで見た限りMacしかない。
