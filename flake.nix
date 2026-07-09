# flake.nix
{
  description = "Formal Ledger Specifications";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };

    agda-nix = {
      url = "github:input-output-hk/agda.nix";
      inputs.nixpkgs.follows = "nixpkgs";
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
