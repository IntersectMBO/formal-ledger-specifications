### flake.nix
{
  description = "Formal Ledger Specifications";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        haskellPackages = pkgs.haskellPackages;

        # Build fls-shake from its own nix file
        fls-shake = pkgs.callPackage ./fls-shake.nix {};
      in {
        packages.default = fls-shake;

        apps.default = flake-utils.lib.mkApp {
          drv = fls-shake;
        };

        devShells.default = pkgs.mkShell {
          buildInputs = with haskellPackages; [
            ghc
            cabal-install
            shake
            binary
            hashable
          ];
        };

        legacyPackages = {
          inherit fls-shake;
        };

        hydraJobs = {
          inherit (self.packages.${system}) default;
        };

        formalLedger = {
          inherit fls-shake;
        };
      });
}

