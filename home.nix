{ config, pkgs, ... }:

{
  home.username = "narlyx";
  home.homeDirectory = "/home/narlyx";

  home.stateVersion = "23.11";

  home.packages = [
    pkgs.zoxide
    pkgs.bat
    pkgs.eza
    pkgs.fzf
    pkgs.thefuck

    pkgs.neovim

    pkgs.kitty
    pkgs.waybar
    pkgs.wofi

    pkgs.librewolf

    pkgs.git
    pkgs.gh
  ];

  home.file = {

    ".zshrc".source = ./dotfiles/zsh/zshrc;

    ".config/nvim" = {
      source = ./dotfiles/nvim;
      recursive = true;
    };

    ".config/hypr" = {
      source = ./dotfiles/hypr;
      recursive = true;
    };

    ".gitconfig".source = ./dotfiles/git/gitconfig;

  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
