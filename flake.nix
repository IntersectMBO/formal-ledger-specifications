# flake.nix
{
  description = "Formal Ledger Specifications";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";

    standard-library-classes = {
      url = "github:input-output-hk/agda.nix?dir=libraries/standard-library-classes";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    standard-library-meta = {
      url = "github:input-output-hk/agda.nix?dir=libraries/standard-library-meta";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.standard-library-classes.follows = "standard-library-classes";
    };

    abstract-set-theory = {
      url = "github:input-output-hk/agda-sets";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.standard-library-classes.follows = "standard-library-classes";
      inputs.standard-library-meta.follows = "standard-library-meta";
    };

    iog-prelude = {
      url = "github:input-output-hk/iog-agda-prelude";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.standard-library-classes.follows = "standard-library-classes";
      inputs.standard-library-meta.follows = "standard-library-meta";
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
              inputs.standard-library-classes.overlays.default
              inputs.standard-library-meta.overlays.default
              inputs.abstract-set-theory.overlays.default
              inputs.iog-prelude.overlays.default
              overlay-formal-ledger
            ];
          };

          agdaWithPackages = nixpkgs.agda.withPackages (
            builtins.filter (p: p ? isAgdaDerivation) nixpkgs.agdaPackages.formal-ledger.buildInputs
          );

          fls-shake = inputs.fls-shake.packages.${system}.default.override (_: {
            fls-agda = agdaWithPackages;
          });

          mkDerivation =
            args:
            let
              default = {
                version = "0.1";
                meta = args.meta or { };
                buildInputs = (args.buildInputs or [ ]) ++ [
                  fls-shake
                  nixpkgs.agdaPackages.formal-ledger
                ];
                copyAgdaBuild = ''
                  cp -r "${nixpkgs.agdaPackages.formal-ledger}/_build" .
                  find _build -type d -print0 | xargs -0 chmod 755
                  find _build -type f -print0 | xargs -0 chmod 644
                '';
                preBuildPhases = (args.preBuildPhases or [ ]) ++ [ "copyAgdaBuild" ];
              };
            in
            nixpkgs.stdenv.mkDerivation (args // default);

          pkgs = {
            hs-src = nixpkgs.callPackage ./build-tools/nix/hs-src.nix { inherit mkDerivation; };
            html = nixpkgs.callPackage ./build-tools/nix/html.nix { inherit mkDerivation; };
            mkdocs = nixpkgs.callPackage ./build-tools/nix/mkdocs.nix { inherit mkDerivation; };
          };
        in
        {
          packages = pkgs // {
            default = nixpkgs.agdaPackages.formal-ledger;
            inherit agdaWithPackages;
          };

          devShells = with nixpkgs; {
            default = mkShell {
              packages = [
                fls-shake
                python3
                coreutils
              ];
            };

            # Minimal environment for CI builds (see GH actions)
            ci = mkShell {
              packages = [
                fls-shake
              ];
            };

            # Complete documentation pipeline (mkdocs)
            mkdocs = mkShell {
              packages = [
                # Core Agda development
                agdaWithPackages
                fls-shake

                # Document conversion tools
                pandoc
                (texlive.combine {
                  inherit (texlive)
                    scheme-small
                    dejavu
                    luatex
                    luatex85
                    dvisvgm
                    standalone
                    tikz-cd
                    pgfplots
                    ;
                })
                dejavu_fonts

                # Python environment for mkdocs pipeline
                (python3.withPackages (
                  ps: with ps; [
                    pip
                    mkdocs
                    mkdocs-material
                    pymdown-extensions
                    pyyaml
                    pybtex
                  ]
                ))

                # Additional tools
                coreutils
                hpack
                ghostscript
              ];
            };
          };

          hydraJobs =
            let
              jobs = {
                inherit agdaWithPackages;
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
