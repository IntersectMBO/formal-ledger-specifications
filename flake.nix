{
  outputs = _: let
    systems = [ "x86_64-linux" ];

    # let's use niv instead of flake inputs
    sources = import nix/sources.nix;
    pkgs = import sources.nixpkgs { system = builtins.head systems; };
    inherit (pkgs) lib;
  in rec {
    checks = hydraJobs;

    hydraJobs = lib.genAttrs systems (system: let
      exposed = import ./. {
        inherit sources;
        pkgs = import sources.nixpkgs { inherit system; };
      };

      specsDerivationsPackages = key: lib.mapAttrs'
        (k: lib.nameValuePair "${key}-${k}")
        (lib.filterAttrs (k: v: builtins.elem k [ "docs" "hsExe" ]) exposed.${key});

      jobs = {
        inherit (exposed)
          agda
          agdaWithDeps
          latex
          formalLedger;
      } //
        specsDerivationsPackages "ledger" //
        specsDerivationsPackages "midnight";
    in jobs // {
      required = pkgs.releaseTools.aggregate {
        name = "required";
        constituents = lib.collect lib.isDerivation jobs;
      };
    });
  };

  nixConfig = {
    extra-substituters = [
      "https://cache.iog.io"
      "https://cache.garnix.io"
    ];
    extra-trusted-public-keys = [
      "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="
      "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
    ];
  };
}
