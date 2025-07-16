{
  description = "Formal Ledger Specifications (flake integration)";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { self, flake-utils, ... }:
    let
      # reuse the dependencies pinned by niv
      sources = import ./build-tools/nix/sources.nix;
      systems = [ "x86_64-linux" ];
    in
    flake-utils.lib.eachSystem systems (
      system:
      let
        nixpkgs = import sources.nixpkgs { inherit system; };
        pkgs = import ./default.nix { inherit nixpkgs; };
      in
      {
        packages = pkgs // {
          # Set default package
          default = pkgs.formal-ledger;
        };
        # Expose development shells
        devShells = pkgs.devShells // {
          # default shell points to the main development environment
          default = pkgs.devShells.default;
        };

        # Keep hydraJobs for CI
        hydraJobs = {
          inherit (pkgs)
            agdaWithPackages
            fls-shake
            formal-ledger
            hs-src
            mkdocs
            ;
        };
      }
    );
}
