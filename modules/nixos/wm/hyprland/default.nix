{
  options,
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    pkgs.kitty
    pkgs.wofi
  ];
}
