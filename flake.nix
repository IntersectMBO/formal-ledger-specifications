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
          default = pkgs.formalLedger;
        };
        # Expose development shells
        devShells = pkgs.devShells // {
          # default shell points to the main development environment
          default = pkgs.devShells.default;
        };

        # Keep hydraJobs for CI
        hydraJobs = {
          required = nixpkgs.releaseTools.aggregate {
            name = "required";
            meta.description = "All jobs required to pass CI";
            constituents = with pkgs; [
              agdaWithPackages
              fls-shake
              formal-ledger
              hs-src
              mkdocs
            ];
          };
          nonrequired = nixpkgs.releaseTools.aggregate {
            name = "nonrequired";
            meta.description = "Nonrequired jobs that should not affect CI status";
            constituents = with pkgs; [
              html
              docs
            ];
          };
        };
      }
    );
}
