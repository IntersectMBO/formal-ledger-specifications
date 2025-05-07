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
    agda-compat = {
       url = "github:agda/agda/v2.7.0.1";
       # We assume Agda v2.7.0.1 repo might not be a fully fledged flake itself.
       # Setting flake = false; tells Nix to treat it as just source files + nix expression if available.
       flake = false; # Treat as source tree
    };
  };

  outputs = { self, nixpkgs, flake-utils, agda-compat, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
           inherit system;
           overlays = []; # we might need overlays later if GHC versions clash
        };

        # --- load shell environment from shell.nix ---
        shellEnv = import ./shell.nix {
          inherit pkgs;
          agdaCompatSrc = agda-compat; # pass the compatible Agda source input to shell.nix;
                                       # since flake=false, pass source path itself
        };

        # --- load package from default.nix ---
        defaultPackage = import ./default.nix { inherit pkgs; }; # likely uses pkgs.agda, unless
                                                                 # we change default.nix reference
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

        hydraJobs = { inherit (self.packages.${system}) default; };
        formalLedger = { inherit fls-shake; };
      });
}
