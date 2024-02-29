{ config, pkgs, ... }:

{
  users.users = {
    narlyx = {
      isNormalUser = true;
      description = "The Holly God";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
    };
  };
}
