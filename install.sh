#!/bin/bash

nala() {
	sudo apt install -y \
		git \
		zsh \
		stow \
		latexmk \
		biber \
		zathura \
		xdotool
}

brew() {
	if ! command -v brew &> /dev/null; then
		echo "Brew doesn't exist."
		return
	fi

	brew install -y \
	tlrc \
    git-delta \
	neovim \
    lazygit \
	yazi \
	fzf \
	ripgrep \ # rg
	fd # fd-find
}

sudo apt install -y nala
nala

# Brew dependencies for debian
sudo apt-get install build-essential procps curl file git
brew
