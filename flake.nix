{
  description = "Formal Ledger Specifications (flake integration)";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, flake-utils, ... }:
    let
      # reuse the dependencies pinned by niv
      sources = import ./build-tools/nix/sources.nix;
      systems = ["x86_64-linux"];
    in
      flake-utils.lib.eachSystem systems (system:
        let
          nixpkgs = import sources.nixpkgs { inherit system; };
          packageSet = import ./default.nix { inherit nixpkgs; };
        in {
          packages = packageSet;
          hydraJobs = packageSet;
      });
}
