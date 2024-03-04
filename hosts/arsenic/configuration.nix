{ pkgs, ... }: 
{
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = [];

  services.nix-daemon.enable = true;

  nix.settings.experimental-features = "nix-command flakes";

  system.stateVersion = 4;
}