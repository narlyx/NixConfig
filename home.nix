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
    pkgs.vscode

    pkgs.waybar
    pkgs.wofi

    pkgs.pavucontrol
    pkgs.firefox

    pkgs.git
    pkgs.gh
  ];

  home.file = {

    ".zshrc".source = ./dotfiles/zsh/zshrc;

    ".config/nvim" = {
      source = ./dotfiles/nvim;
      recursive = true;
    };

    ".config/hypr/hyprland.conf".source = ./dotfiles/hypr/hyperland.conf;

    ".config/waybar" = {
      source = ./dotfiles/waybar;
      recursive = true;
    };

    ".gitconfig".source = ./dotfiles/git/gitconfig;

    ".config/kitty" = {
      source = ./dotfiles/kitty;
      recursive = true;
    };

  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
