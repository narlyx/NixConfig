{ pkgs, ... }:

let
  desktopBundle = [
    pkgs.firefox
    pkgs.tor-browser
    pkgs.bitwarden
    pkgs.spotify
    pkgs.discord
    pkgs.github-desktop
    pkgs.vscode
    pkgs.android-studio
  ];

  languagesBundle = [
    pkgs.python3
  ];

in {
  # Zsh
  programs.zsh.enable = true;
  home.file.".zshrc".source = ../../../dotfiles/zsh/zshrc;

  # Cli Tools
  programs.zoxide.enable  = true;
  programs.bat.enable = true;
  programs.eza.enable = true;
  programs.fzf.enable = true;
  programs.thefuck.enable = true;
  programs.tmux.enable = true;

  # Git
  programs.git.enable = true;
  home.file.".gitconfig".source = ../../../dotfiles/git/gitconfig;
  programs.gh.enable = true;

  # Editors
  programs.neovim.enable = true;
  home.file.".config/nvim" = {
    source = ../../../dotfiles/nvim;
    recursive = true;
  };


  home.packages = desktopBundle ++ languagesBundle ++ [  ];


  # Other Dotfiles
  home.file.".config/hypr/hyprland.conf".source = ../../../dotfiles/hypr/hyprland.conf;
  home.file.".config/waybar" = {
    source = ../../../dotfiles/waybar;
    recursive = true;
  };
  home.file.".config/wofi/style.css".source = ../../../dotfiles/wofi/style.css;
  home.file.".config/kitty" = {
    source = ../../../dotfiles/kitty;
    recursive = true;
  };
}
