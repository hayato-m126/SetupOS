# QNX

RPi5で動くQNXのTIPS

## Ref

- <https://zenn.dev/tasada038/articles/f7e81d709775ee>
- <https://www.qnx.com/developers/docs/qnxeverywhere/com.qnx.doc.target_images/topic/qsti/intro.html?ref=devblog.qnx.com>

## 困りごと

### 日本語キーボードの一部が認識しない

¥ ] _ 半角全角がだめ

```shell
# $HOME/.config/weston.ini
[keyboard]
keymap_layout=jp
```
