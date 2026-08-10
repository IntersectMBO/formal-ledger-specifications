# flake.nix
{
  description = "Formal Ledger Specifications";

  # NOTE: inputs use git+https://... instead of the github: shorthand.
  # The github: fetcher pulls tarballs from api.github.com / codeload.github.com,
  # which the Claude Code web sandbox proxy 403s for third-party repos; plain
  # git-over-https works there for any public repo.
  #
  # narHashes are identical between the two fetchers, so the pins are unchanged.
  #
  # nixpkgs adds `shallow=1` so a binary-cache miss fetches only the locked rev.
  #
  # UPDATING: a plain `nix flake update` re-reads transitive inputs from their
  # upstream flakes (still declared github:) and would regress the lock.  Use:
  #
  #   nix flake update \
  #     --override-input agda-nix/abstract-set-theory git+https://github.com/input-output-hk/agda-sets \
  #     --override-input agda-nix/categorical-crypto git+https://github.com/input-output-hk/categorical-crypto \
  #     --override-input agda-nix/flake-utils git+https://github.com/numtide/flake-utils \
  #     --override-input agda-nix/flake-utils/systems git+https://github.com/nix-systems/default \
  #     --override-input agda-nix/iog-prelude git+https://github.com/input-output-hk/iog-agda-prelude \
  #     --override-input agda-nix/standard-library-classes git+https://github.com/agda/agda-stdlib-classes \
  #     --override-input agda-nix/standard-library-meta git+https://github.com/agda/agda-stdlib-meta \
  #     --override-input flake-parts/nixpkgs-lib git+https://github.com/nix-community/nixpkgs.lib
  #
  # then verify nothing github-locked slipped in (upstreams gain inputs over time;
  # `nix flake metadata` shows a new input's path; append an override):
  #
  #   python3 -c "import json; L=json.load(open('flake.lock'))['nodes']; \
  #     print(*[k for k,v in L.items() if v.get('locked',{}).get('type')=='github'] or ['OK'])"
  #
  # (Transitive *original* fields read github after an update; harmless since fetches go by *locked* entries.)
  inputs = {
    nixpkgs.url = "git+https://github.com/NixOs/nixpkgs?shallow=1";

    flake-parts = {
      url = "git+https://github.com/hercules-ci/flake-parts";
    };

    agda-nix = {
      url = "git+https://github.com/input-output-hk/agda.nix";
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
