# homegit

Thanks to:
- [This tutorial from Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)
- [that originated from this HackerNews thread by StreakyCobra](https://news.ycombinator.com/item?id=11071754)
- [that brought me to an older article about the same technique](https://leahneukirchen.org/blog/archive/2013/01/a-grab-bag-of-git-tricks.html)

## Aliases

```sh
alias config='GIT_DIR=$HOME/.homegit/ GIT_WORK_TREE=$HOME git'
```

## git-crypt

```sh
$ GIT_DIR=$HOME/.homegit/ GIT_WORK_TREE=$HOME git-crypt add-gpg-user 0xA0A378A5
[main cce002a] Add 1 git-crypt collaborator
 2 files changed, 4 insertions(+)
 create mode 100644 .git-crypt/.gitattributes
 create mode 100644 .git-crypt/keys/default/0/85FB93CFF14B5E412120735503E546AEA0A378A5.gpg
```

