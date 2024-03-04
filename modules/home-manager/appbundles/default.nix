{ pkgs, ... }:

{
  # Shell
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

  # Todo MOVE AWAYYY
  home.packages = [ pkgs.firefox pkgs.bitwarden pkgs.spotify pkgs.discord pkgs.github-desktop pkgs.vscode pkgs.android-studio ];


  # Other Dotfiles
  home.file.".config/hypr/hyprland.conf".source = ../../../dotfiles/hypr/hyprland.conf;
  home.file.".config/waybar" = {
    source = ../../../dotfiles/waybar;
    recursive = true;
  };
  home.file.".config/kitty" = {
    source = ../../../dotfiles/kitty;
    recursive = true;
  };
}
