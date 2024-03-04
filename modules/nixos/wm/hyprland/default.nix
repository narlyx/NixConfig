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
    pkgs.waybar
    pkgs.helvum
    pkgs.pavucontrol
  ];
}
