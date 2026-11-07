# flake.nix
{
  description = "Formal Ledger Specifications";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };

    # agda-stdlib 2.4; nixpkgs still packages 2.3 (see build-tools/README.md).
    agda-stdlib = {
      url = "github:agda/agda-stdlib/v2.4";
      flake = false;
    };

    agda-nix = {
      url = "github:input-output-hk/agda.nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.standard-library-classes.url = "github:agda/agda-stdlib-classes/v2.4";
      inputs.standard-library-meta.url = "github:agda/agda-stdlib-meta/v2.4";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-parts,
      ...
    }@inputs:
    let
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
      ];
    in
    flake-parts.lib.mkFlake { inherit inputs; } {

      inherit systems;

      imports = [
        ./build-tools/nix/fls-agda.nix
        ./build-tools/nix/fls-shake.nix
      ];

      perSystem =
        {
          self',
          pkgs,
          system,
          ...
        }:
        let
          formal-ledger = pkgs.agdaPackages.callPackage ./build-tools/nix/formal-ledger.nix { };

          formal-ledger-test = pkgs.agdaPackages.callPackage ./build-tools/nix/formal-ledger-lib.nix {
            name = "test";
            inherit formal-ledger;
          };

          fls-agdaWithPackages = pkgs.agda.withPackages (
            builtins.filter (p: p ? isAgdaDerivation) formal-ledger.buildInputs
          );

          fls-shake-agdaWithPackages = self'.packages.fls-shake.override (_: {
            fls-agda = fls-agdaWithPackages;
          });

          mkDerivation =
            args:
            let
              default = {
                version = "0.1";
                meta = args.meta or { };
                nativeBuildInputs = (args.nativeBuildInputs or [ ]) ++ [
                  formal-ledger
                  fls-agdaWithPackages
                  fls-shake-agdaWithPackages
                ];
                copyAgdaBuild = ''
                  cp -r "${formal-ledger}/_build" .
                  find _build -type d -print0 | xargs -0 chmod 755
                  find _build -type f -print0 | xargs -0 chmod 644
                '';
                preBuildPhases = (args.preBuildPhases or [ ]) ++ [ "copyAgdaBuild" ];
              };
            in
            pkgs.stdenv.mkDerivation (args // default);

          hs-src = pkgs.callPackage ./build-tools/nix/hs-src.nix { inherit mkDerivation; };

          pkgs' = {
            inherit
              formal-ledger
              formal-ledger-test
              hs-src
              ;
            html = pkgs.callPackage ./build-tools/nix/html.nix { inherit mkDerivation; };
            mkdocs = pkgs.callPackage ./build-tools/nix/mkdocs.nix { inherit mkDerivation; };
          };
        in
        {
          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;
            overlays = [
              (final: prev: {
                agdaPackages = prev.agdaPackages.override (_: {
                  Agda = self'.packages.fls-agda;
                });
              })
              inputs.agda-nix.overlays.default
              (final: prev: {
                agdaPackages = prev.agdaPackages.overrideScope (
                  afinal: aprev: {
                    standard-library = aprev.standard-library.overrideAttrs (_: {
                      version = "2.4";
                      src = inputs.agda-stdlib;
                    });
                    # Until iog-agda-prelude has a release for stdlib 2.4: depend on
                    # `standard-library` (not `standard-library-2.3`), and the
                    # level-polymorphic ComputationResult stdlib-classes v2.4 needs.
                    iog-prelude = aprev.iog-prelude.overrideAttrs (old: {
                      patches = (old.patches or [ ]) ++ [ ./build-tools/nix/patches/iog-prelude-stdlib-2.4.patch ];
                    });
                  }
                );
              })
            ];
          };

          packages = pkgs' // {
            default = formal-ledger;
            inherit
              fls-agdaWithPackages
              fls-shake-agdaWithPackages
              ;
          };

          devShells = with pkgs; {

            default =
              (mkShell {
                inputsFrom = builtins.attrValues (removeAttrs pkgs' [ "formal-ledger-test" ]);
              }).overrideAttrs
                (oldAttrs: {
                  buildInputs = oldAttrs.buildInputs ++ [
                    fls-shake-agdaWithPackages.buildInputs
                  ];
                });

            fls-shake-agdaWithPackages = self'.devShells.fls-shake.overrideAttrs (_: {
              packages = [ fls-shake-agdaWithPackages ];
            });
          };

        };

      flake = with nixpkgs; {
        hydraJobs =
          with nixpkgs;
          lib.genAttrs [ "packages" "devShells" ] (
            flakeOutput:
            lib.foldl' lib.recursiveUpdate { } (
              map (
                system:
                lib.genAttrs (builtins.attrNames self.${flakeOutput}.${system}) (drvName: {
                  ${system} = self.${flakeOutput}.${system}.${drvName};
                })
              ) systems
            )
          );
      };
    };

}
