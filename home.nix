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
    pkgs.helvum

    pkgs.pavucontrol
    pkgs.firefox
    pkgs.spotify
    pkgs.discord
    pkgs.bitwarden
    pkgs.android-studio

    pkgs.git
    pkgs.gh

    pkgs.rustc
    pkgs.rustup
    pkgs.alsa-lib
    pkgs.fontconfig
    pkgs.openssl
    pkgs.zstd
    pkgs.pkg-config
  ];

  home.file = {

    ".zshrc".source = ./dotfiles/zsh/zshrc;

    ".config/nvim" = {
      source = ./dotfiles/nvim;
      recursive = true;
    };

    ".config/hypr/hyprland.conf".source = ./dotfiles/hypr/hyprland.conf;

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
