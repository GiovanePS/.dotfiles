# This repository is for my config files

## Requirements

### 1. Git

```
sudo nala install -y git
```

### 2. zsh
```
sudo nala install -y zsh
```

### 3. oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 4. Stow

```
sudo nala install -y stow
```

### 4. Nerd fonts:
```
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
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

### To pull with submodules use:
```
git pull --recurse-submodules
```

### COQ Dependencies:
```
:COQdeps
```

### Mason Binaries
```
:MasonInstall gopls clangd lua-language-server
```

# Programs to install
```
kitty
nala
zsh
oh-my-zsh
bat
ripgrep
neovim
universal-ctags
```
