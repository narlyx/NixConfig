{
  description = "General Config";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, nix-darwin, home-manager, ... }: 
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in {

    nixosConfigurations = {

      acetylene = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/acetylene/configuration.nix
          ./modules/nixos
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.narlyx = import ./modules/home-manager;
          }
        ];
      };

    };

    darwinConfigurations = {

      arsenic = nix-darwin.lib.darwinSystem {
        system = "x86_64-darwin";
        modules = [
          ./hosts/arsenic/configuration.nix
          ./modules/darwin
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.narlyx = import ./modules/home-manager;
          }
        ];
      };
      
    };
    darwinPackages = self.darwinConfigurations.arsenic.pkgs;

  };
}
