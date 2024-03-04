{ pkgs, ... }:

{
  programs.zsh.enable = true;

  home.file.".zshrc".source = ../../../../dotfiles/zsh/zshrc;
}