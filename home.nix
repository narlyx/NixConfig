{ config, pkgs, ... }:

{
  home.username = "narlyx";
  home.homeDirectory = "/home/narlyx";

  home.stateVersion = "23.11";

  home.packages = [
    pkgs.neovim
    pkgs.kitty
    pkgs.waybar
    pkgs.wofi

    pkgs.git
    pkgs.gh
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
