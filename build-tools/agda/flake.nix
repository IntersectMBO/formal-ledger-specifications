{
  description = "fls-agda backend";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    let
      overlay = final: prev: {
        agdaPackages = prev.agdaPackages.override (_: {
          Agda = prev.haskellPackages.callPackage ./nix/fls-agda.nix { };
        });
      };
    in
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ overlay ];
        };
      in
      {
        packages.default = pkgs.agda;
      }
    )
    // {
      overlays.default = overlay;
    };
}
