{ config, pkgs, ... }:
{
  home.username = "thiago";
  home.homeDirectory = "/home/thiago";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
    ];
  };
}
