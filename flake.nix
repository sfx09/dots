{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = { url = "github:nix-community/home-manager/master"; inputs.nixpkgs.follows = "nixpkgs"; };
    disko = { url = "github:nix-community/disko"; inputs.nixpkgs.follows = "nixpkgs"; };
    zjstatus = { url = "github:dj95/zjstatus"; };
  };

  outputs = inputs@{ nixpkgs, home-manager, disko, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        lyra = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            home-manager.nixosModules.default
            disko.nixosModules.default
            ./host
            ./profile
          ];
        };
      };
      formatter.${system} = pkgs.nixpkgs-fmt;
    };
}
