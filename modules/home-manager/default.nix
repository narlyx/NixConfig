{ pkgs, ... }:

{
  imports =
    [
      ./appbundles
    ];
  
  home.stateVersion = "22.11";

  home.packages = with pkgs; [
    pkgs.hello
  ];

  programs.home-manager.enable = true;
}