#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

git clone https://github.com/thiagokimo/dotfiles.git $HOME

mkdir -p $HOME/.config/home-manager
cp $HOME/dotfiles/config/flake.nix $HOME/.config/home-manager
cp $HOME/dotfiles/config/home.nix $HOME/.config/home-manager
cp $HOME/dotfiles/config/flake.lock $HOME/.config/home-manager
