{
  description = "";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-apple-silicon = {
      url = "github:tpwrules/nixos-apple-silicon";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.rust-overlay.follows = "rust-overlay";
    };
    rust-overlay = {
      url = github:oxalica/rust-overlay;
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    impermanence.url = "github:nix-community/impermanence";
  };

  outputs =
    { nixpkgs
    , nixos-apple-silicon
    , rust-overlay
    , home-manager
    , impermanence
    , ...
    } @ inputs:
    let
      hostName = "M2NixOS";
      system = "aarch64-linux";
      pkgs = {
        inherit system;
        config = {
          allowUnfree = true;
          allowBroken = true; # TODO: Only allow ZFS kernel
        };
        overlays = [
          rust-overlay.overlays.default
          nixos-apple-silicon.overlays.default

          ./pkgs
        ];
      };
    in
    {
      nixosConfigurations."${hostName}" = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs system; };
        modules = [
          ./modules

          nixos-apple-silicon.nixosModules.default
          home-manager.nixosModules.home-manager

          impermanence.nixosModule
        ];
      };
    };
}

