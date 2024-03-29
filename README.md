# homegit

Thanks to:
- [This tutorial from Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)
- [that originated from this HackerNews thread by StreakyCobra](https://news.ycombinator.com/item?id=11071754)
- [that brought me to an older article about the same technique](https://leahneukirchen.org/blog/archive/2013/01/a-grab-bag-of-git-tricks.html)

## Aliases

Personal alias:

```sh
alias homegit='GIT_DIR=$HOME/.homegit/ GIT_WORK_TREE=$HOME git'
```

To be used in scripts using shellcheck SC2262:

```sh
homegit() { GIT_DIR=$HOME/.homegit/ GIT_WORK_TREE=$HOME git "$@"; }
```


## git-crypt

```sh
$ brew install git-crypt
$ cd $HOME/.homegit
$ git-crypt init
Generating key...
$ GIT_DIR=$HOME/.homegit/ GIT_WORK_TREE=$HOME git-crypt add-gpg-user 0xA0A378A5
[main cce002a] Add 1 git-crypt collaborator
 2 files changed, 4 insertions(+)
 create mode 100644 .git-crypt/.gitattributes
 create mode 100644 .git-crypt/keys/default/0/85FB93CFF14B5E412120735503E546AEA0A378A5.gpg
$ echo 'npmrc filter=git-crypt diff=git-crypt' > ~/.gitattributes
$ cd
$ config add .npmrc
$ config commit -m 'Add .npmrc (encrypted)'
```

## gpg

```sh
$ brew install gpg
```

You can copy the private key from 1Password and import it:

```sh
pbpaste | gpg --import
```

Now you can run (it will ask for the passphrase):

```sh
homegit crypt unlock
```
