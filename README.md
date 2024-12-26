# This repository is for my config files

### 1. Git

```
sudo nala install -y git
```

### 2. zsh
```
sudo nala install -y zsh
```
Already defined in the script.

### 3. oh-my-zsh
https://ohmyz.sh/

### 4. Stow
```
sudo nala install -y stow
```
Already defined in the script.

### 5. Brew for Linux
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
		lazy-nvim (see plugins to install dependencies for them)
    lazygit
	yazi (see dependencies. (yazi --debug))
	fzf
	ripgrep (rg)
	fd-find (fd)
zsh
	oh-my-zsh
	zsh-autosuggestions
	powerlevel10k
	zsh-vi-mode
tmux
  oh-my-tmux
universal-ctags
asdf
bat (batcat)
lua (5.1 in apt)
luarocks (for lua 5.1 in apt)
xclip
colorls
zoxide
latexmk
biber
zathura
xdotool
```
