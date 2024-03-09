{
  options,
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports =
    [
      ./bootloader/grub
      ./fonts
      ./locale
      ./network
      ./shell
      ./users
      ./dm/greetd
      ./wm/hyprland
      ./audio/pipewire
      ./printing
    ];
}
