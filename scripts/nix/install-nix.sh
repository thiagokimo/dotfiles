#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

git clone https://github.com/thiagokimo/dotfiles.git $HOME/dotfiles

mkdir -p $HOME/.config/home-manager
cp $HOME/dotfiles/config/home-manager/flake.nix $HOME/.config/home-manager
cp $HOME/dotfiles/config/home-manager/home.nix $HOME/.config/home-manager
cp $HOME/dotfiles/config/home-manager/flake.lock $HOME/.config/home-manager
