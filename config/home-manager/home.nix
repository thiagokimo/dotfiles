{ config, pkgs, ... }:
{
  home = {
    username = "thiago";
    homeDirectory = "/home/thiago";
    stateVersion = "23.11";

    packages = with pkgs; [
      bat
      git
      htop
      less
      neofetch
      unzip
      zip
    ]
  };

  programs.home-manager.enable = true;
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
    ];
  };
}
