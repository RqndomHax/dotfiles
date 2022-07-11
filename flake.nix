{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.home-manager.url = "github:nix-community/home-manager";

  outputs = { self, nixpkgs, ... } @ inputs: {
    nixosConfigurations.rqndom-nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nixos
        inputs.home-manager.nixosModule
        {
          home-manager.useGlobalPkgs = true;
          home-manager.users.rqndomhax.imports = [ ./home ];
        }
      ];
    };
  };
}