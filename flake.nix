{
  description = "Formal Ledger Specification (flake integration)";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        # reuse the dependencies pinned by niv
        sources = import ./build-tools/nix/sources.nix;
        nixpkgs = import sources.nixpkgs {
          inherit system;
          overlays = [ ];
          config = { };
        };
        packageSet = import ./default.nix { inherit nixpkgs; };
      in {
        packages = packageSet;
        hydraJobs = { inherit (self.packages.${system}) packages; };
      });
}
