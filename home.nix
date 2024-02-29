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
    ".zshrc".source = ./dotfiles/zsh/zshrc;
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
