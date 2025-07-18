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

      perSystem = flake-utils.lib.eachSystem systems (
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
          hydraJobs =
            let
              jobs = {
                inherit (pkgs)
                  agdaWithPackages
                  fls-shake
                  formal-ledger
                  hs-src
                  mkdocs
                  ;
              };
            in
            jobs // {
              required = nixpkgs.releaseTools.aggregate {
                name = "${system}-required";
                constituents = builtins.attrValues jobs;
              };
            };
        }
      );
    in
    perSystem
    // {
      hydraJobs = perSystem.hydraJobs // {
        required =
          let
            nixpkgs = import sources.nixpkgs { system = builtins.head systems; };
          in
          nixpkgs.releaseTools.aggregate {
            name = "required";
            constituents = map (system: perSystem.hydraJobs.${system}.required) systems;
          };
      };
    };
}
