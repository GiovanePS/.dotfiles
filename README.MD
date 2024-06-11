# This repository is for my config files

## Requirements

### 1. Git

```
sudo apt install -y git
```

### 2. Stow

```
sudo apt install -y stow
```

### Instalation

First, check out the dotfiles repo in your $HOME directory using git:

```
$ git clone git@github.com:GiovanePS/.dotfiles.git
$ cd .dotfiles
```

then, use `stow` to create symlinks:
```
$ stow .
```

If already exist some file, run that with `--adopt` flag, to use that file
```
$ stow --adopt .
$ git reset --hard
```

or rename that file/folder, like that:
```
mv ~/.anyConf ~/.anyConf.bak
$ stow .
```
