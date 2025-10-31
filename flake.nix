# flake.nix
{
  description = "Formal Ledger Specifications";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";

    agda-nix = {
      url = "github:input-output-hk/agda.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fls-agda = {
      url = "./build-tools/agda";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fls-shake = {
      url = "./build-tools/shake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { self, flake-utils, ... }@inputs:
    let
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
      ];

      overlay-formal-ledger = final: prev: {
        agdaPackages = prev.agdaPackages.overrideScope (
          afinal: aprev: {
            formal-ledger = afinal.callPackage ./build-tools/nix/formal-ledger.nix { };
          }
        );
      };

      perSystem = flake-utils.lib.eachSystem systems (
        system:
        let
          nixpkgs = import inputs.nixpkgs {
            inherit system;
            overlays = [
              # it's important to apply this overlay first
              # (see https://github.com/NixOS/nixpkgs/issues/447012)
              inputs.fls-agda.overlays.default
              inputs.agda-nix.overlays.default
              overlay-formal-ledger
            ];
          };

          # fls-agda with formal-ledger dependencies
          fls-agdaWithPackages = nixpkgs.agda.withPackages (
            builtins.filter (p: p ? isAgdaDerivation) nixpkgs.agdaPackages.formal-ledger.buildInputs
          );

          # Override fls-agda in fls-shake to use fls-agda with the formal-ledger dependencies
          fls-shake = inputs.fls-shake.packages.${system}.default.override (_: {
            fls-agda = fls-agdaWithPackages;
          });

          formal-ledger = nixpkgs.agdaPackages.formal-ledger;

          # Helper to create derivations that reuse _build from formal-ledger
          mkDerivation =
            args:
            let
              default = {
                version = "0.1";
                meta = args.meta or { };
                buildInputs = (args.buildInputs or [ ]) ++ [
                  formal-ledger
                  fls-agdaWithPackages
                  fls-shake
                ];
                copyAgdaBuild = ''
                  cp -r "${formal-ledger}/_build" .
                  find _build -type d -print0 | xargs -0 chmod 755
                  find _build -type f -print0 | xargs -0 chmod 644
                '';
                preBuildPhases = (args.preBuildPhases or [ ]) ++ [ "copyAgdaBuild" ];
              };
            in
            nixpkgs.stdenv.mkDerivation (args // default);

          hs-src = nixpkgs.callPackage ./build-tools/nix/hs-src.nix { inherit mkDerivation; };

          cardano-ledger-executable-spec = nixpkgs.haskell.lib.compose.disableLibraryProfiling (
            nixpkgs.haskellPackages.callCabal2nix "cardano-ledger-executable-spec" "${hs-src}/hs" { }
          );

          pkgs = {
            inherit formal-ledger hs-src cardano-ledger-executable-spec;
            html = nixpkgs.callPackage ./build-tools/nix/html.nix { inherit mkDerivation; };
            mkdocs = nixpkgs.callPackage ./build-tools/nix/mkdocs.nix {
              inherit (nixpkgs.stdenv) mkDerivation;
              inherit fls-agdaWithPackages;
            };
          };
        in
        {
          # ========================
          # Packages
          # ========================
          packages = pkgs // {
            default = formal-ledger;
            inherit fls-agdaWithPackages;
          };

          # ========================
          # Developer shells
          # ========================
          devShells = with nixpkgs; {
            default = mkShell {
              inputsFrom = builtins.attrValues pkgs;
            };

            # Minimal environment for CI builds (see GH actions)
            ci = mkShell {
              packages = [
                fls-shake
              ];
            };

            # Complete documentation pipeline (mkdocs)
            mkdocs = mkShell {
              inputsFrom = [
                pkgs.mkdocs
              ];
            };
          };

          # ========================
          # Hydra jobs
          # ========================
          hydraJobs =
            let
              jobs = {
                inherit fls-agdaWithPackages;
                formal-ledger = nixpkgs.agdaPackages.formal-ledger;
              }
              // pkgs;
            in
            jobs
            // {
              required = nixpkgs.releaseTools.aggregate {
                name = "${system}-required";
                constituents = with nixpkgs.lib; collect isDerivation jobs;
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
            nixpkgs = import inputs.nixpkgs {
              system = builtins.head systems;
            };
          in
          nixpkgs.releaseTools.aggregate {
            name = "required";
            constituents = map (system: perSystem.hydraJobs.${system}.required) systems;
          };
      };
    };
}
