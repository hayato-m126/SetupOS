# QNX

RPi5で動くQNXのTIPS

## Ref

- <https://zenn.dev/tasada038/articles/f7e81d709775ee>
- <https://www.qnx.com/developers/docs/qnxeverywhere/com.qnx.doc.target_images/topic/qsti/intro.html?ref=devblog.qnx.com>
- <https://www.qnx.com/developers/docs/qnxeverywhere/com.qnx.doc.target_images/topic/qsti/next-steps.html>
- <https://www.qnx.com/developers/docs/qnxeverywhere/com.qnx.doc.target_images/topic/qsti/qnxos_on_rpi.html>

## 困りごと

### 日本語キーボードの一部が認識しない

公式の設定どおりにやっても、¥ ] _ 半角全角がだめ

```shell
sudo nano /usr/lib/graphics/drm-rpi5/graphics-rpi5-2xhdmi.conf
```

keymap = /usr/share/keyboard/ja_JP_106
