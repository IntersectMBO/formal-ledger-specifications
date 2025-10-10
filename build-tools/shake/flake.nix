{
  description = "fls-shake build system";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";

    fls-agda = {
      url = "../agda";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        packages.default = pkgs.haskellPackages.callPackage ./fls-shake.nix {
          fls-agda = inputs.fls-agda.packages.${system}.default;
          inherit (pkgs)
            makeWrapper
            hpack
            python3
            ;
        };
      }
    );
}
