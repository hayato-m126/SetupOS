# github

githubのアカウントを作ってsshでgit pushするまでの手順

## process

### github のウェブページでの操作

- github アカウント作成する
  - <https://github.com/>
- メアドを非公開にする
  - <https://github.com/settings/emails>
- 2FA設定
  - <https://github.com/settings/security>
- ssh key登録
  - <https://github.com/settings/keys>

### ローカル操作

- git configを設定する
  - email設定のページで表示されているnoreplyのアドレスを設定する

```shell
git config --global user.name "name"
git config --global user.email "noreply mail address"
```

- ssh key作成

```shell
ssh-keygen -t ed25519 -f .ssh/github_ed25519 -C "account mail address"
```

- sshのconfig設定

```shell
touch .ssh/config
```

```config
Host github.com
  HostName github.com
  IdentityFile ~/.ssh/github_ed25519
  User git
```

## notice

<https://zenn.dev/taichifukumoto/articles/how-to-use-multiple-github-accounts>

複数のアカウントのsshキーを登録するとき、以下のように設定する。
このとき、mainの方にしか使われない問題があった。ssh agentに明示的にキー追加をすると治った

```config
Host github.com
  HostName github.com
  IdentityFile ~/.ssh/github_ed25519
  User git

Host gh-sub
  HostName github.com
  IdentityFile ~/.ssh/github_sub_ed25519
  User git
```

```gitconfig_sub
[user]
  name = sub account name
  email = sub-email@users.noreply.github.com
[url "git@gh-sub:"]
  insteadOf = https://github.com/
```

修正方法

```shell
ssh-add -D
ssh-add ~/.ssh/github_ed25519
ssh-add ~/.ssh/github_sub_ed25519
```
