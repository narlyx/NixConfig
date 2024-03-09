{ config, pkgs, ... }:

{
  # To access panel go to: http://localhost:631/
  
  services.printing.enable = true;

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
