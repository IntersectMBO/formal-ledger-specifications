# Unified flake.nix that:
# - Preserves original flake features (hydraJobs, formalLedger)
# - Imports logic from default.nix and shell.nix
# - Supports nix build, nix run, nix develop

{
  description = "Formal Ledger Specification (with flake integration)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/6c5963357f3c1c840201eda129a99d455074db04";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
           inherit system;
           overlays = [];
        };

        # --- load shell environment from shell.nix ---
        shellEnv = import ./shell.nix { inherit pkgs; };

        # --- load package from default.nix ---
        defaultPackage = import ./default.nix { inherit pkgs; };

        # --- expose additional components ---
        fls-shake = defaultPackage.fls-shake or defaultPackage;
      in {

        # Make fls-shake the default build target
        packages.default = fls-shake;

        # Make it runnable
        apps.default = flake-utils.lib.mkApp { drv = fls-shake; };

        # Dev shell imports same environment as shell.nix
        devShells = {
          default = shellEnv.shell;
          ci = shellEnv.run.shell;
          markdown = shellEnv.markdownDocsShell;
        };

        legacyPackages.${system}.default = self.devShells.${system}.default;
        hydraJobs = { inherit (self.packages.${system}) default; };
        formalLedger = { inherit fls-shake; };
      });
}
