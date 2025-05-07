# Unified flake.nix that:
# - Preserves original flake features (hydraJobs, formalLedger)
# - Imports logic from default.nix and shell.nix
# - Supports nix build, nix run, nix develop

{
  description = "Formal Ledger Specification (with flake integration)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/0da3c44a9460a26d2025ec3ed2ec60a895eb1114";
    flake-utils.url = "github:numtide/flake-utils";

    # --- Input for Agda v2.7.0.1 ---
    # Using the official release tag v2.7.0.1
    agda-compat-src = {
       url = "github:agda/agda/v2.7.0.1";
       flake = false; # Treat as source tree
    };
  };

  outputs = { self, nixpkgs, flake-utils, agda-compat-src, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        # --- Define an overlay to override Agda version ---
        agdaOverlay = final: prev: {  # override 'agda' package in the final package set (final)
                                      # using previous package set (prev) as a base
          agda = prev.agda.overrideAttrs (oldAttrs: {
            # override attributes of the existing agda derivation
            version = "2.7.0.1";
            src = agda-compat-src; # use source from inputs

            # Potentially needed overrides based on Agda 2.7.0.1 build needs:
            # Check Agda's default.nix in nixpkgs near the pinned commit (0da3c44a)
            # or Agda 2.7.0.1's own build instructions for things like:
            # - specific GHC version (Might require another overlay)
            # - specific versions of Haskell deps (e.g., cabal, etc.)
            # - cargo dependencies (Look for cargoDeps = prev.rustPlatform.importCargoLock { ... };)
            # For now, start minimal, just overriding src and version.
            # If build fails, add necessary overrides here based on errors.
          });

          # We might also need to override haskellPackages if Agda 2.7.0.1 needs
          # a different GHC than the one provided by the default pkgs.haskellPackages.
          # haskellPackages = prev.haskellPackages.override { # Example
          #   ghc = prev.haskell.compiler.ghc928; # Use a specific GHC version
          # };
        };

        pkgs = import nixpkgs {
           inherit system;
           overlays = [ agdaOverlay ];
        };

        # --- load shell environment from shell.nix ---
        shellEnv = import ./shell.nix { inherit pkgs; }; # Pass overlaid pkgs

        # --- load package from default.nix ---
        defaultPackage = import ./default.nix { inherit pkgs; };

        # N.B. when shell.nix and default.nix use 'pkgs', pkgs.agda will refer to the overridden 2.7.0.1 version.

        # --- optionally expose additional components ---
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
