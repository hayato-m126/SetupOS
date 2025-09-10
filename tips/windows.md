# windows

macとwindowsを併用するためのtips

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
