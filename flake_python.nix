{
  description = "Flake for python 3.11"

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
    # Find versios in https://www.nixhub.io/
    old-python.nixpkgs.url = "github:nixos/nixpkgs/38b7104fd1db0046ceed579f5dab4e62f136589c#python311";
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      nixp = lib.nixosSystem {
        system = 'x86_64-linux';
        modules = [ ./configuration.nix ];
      };
    };
  };
}
