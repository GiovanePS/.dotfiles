# This repository is for my config files

### 1. Git

```
sudo nala install -y git
```

### 2. zsh
```
sudo nala install -y zsh
```

### 3. oh-my-zsh
https://ohmyz.sh/

### 4. Stow
```
sudo nala install -y stow
```

### 5. Brew
https://brew.sh/

### 6. Nerd fonts:
https://www.nerdfonts.com/font-downloads

JetBrainsMono
```
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
```

IosevkaTerm
```
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/IosevkaTerm.zip
```

PowerlineFonts
```
curl -OL https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
```

### 7. Atuin:
https://docs.atuin.sh/

```
atuin login -u <USERNAME>
atuin sync
```


### Instalation

First, check out the dotfiles repo in your $HOME directory using git:

```
$ git clone --recurse-submodules git@github.com:GiovanePS/.dotfiles.git
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

### Mason Installs:
```
:Mason
```

# Programs to install
```
kitty
nala
brew
    tlrc
    git-delta
	neovim
		lazy-nvim
    lazygit
	yazi
	fzf
	ripgrep (rg)
zsh
  oh-my-zsh
  zsh-autosuggestions
  powerlevel10k
tmux
  oh-my-tmux
universal-ctags
asdf
bat
lua
ranger
luarocks
fd-find (fd)
xclip
colorls
zoxide
latexmk
biber
zathura
xdotool
```
