# github

githubのアカウントを作ってghで操作できるようになるまで

## process

### github のウェブページでの操作

- github アカウント作成する
  - <https://github.com/>
- メアドを非公開にする
  - <https://github.com/settings/emails>
- 2FA設定
  - <https://github.com/settings/security>

### ローカル操作

- git configを設定する
  - email設定のページで表示されているnoreplyのアドレスを設定する

```shell
git config --global user.name "name"
git config --global user.email "noreply mail address"
```

```shell
gh auth login
```

## 複数アカウントを切り替える

ghq + miseのhooksを使ってディレクトリに入ったときに切り替える
user.emailとアカウントを切り替える

```toml
[env]
export GIT_CONFIG_COUNT=1
export GIT_CONFIG_KEY_0=user.email
export GIT_CONFIG_VALUE_0="hayato-m126@users.noreply.github.com"

[hooks]
enter = "gh auth switch --hostname github.com --user hayato-m126"
leave = "gh auth switch --hostname github.com --user main-id"
```
