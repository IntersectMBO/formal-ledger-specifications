{
  description = "Formal Ledger Specs";

  inputs = {
    # IMPORTANT: report any change to nixpkgs channel in nix/default.nix:
    nixpkgs.url = "github:NixOS/nixpkgs/902d91def1efbea804f5158e5999cb113cedf04b";
    nixpkgs_customagda.url = "github:NixOS/nixpkgs/a7ecde854aee5c4c7cd6177f54a99d2c1ff28a31";
    flake-utils.url = "github:numtide/flake-utils";
    agda = {
      url = "github:input-output-hk/agda/d5ea03b96328f38741efef4535197076ff0e05d5";
    };
    agdaStdlib = {
      url = "github:input-output-hk/agda-stdlib/f8fdb925c74e8d3b0c88e2a5520bc11e606d34c6";
      flake = false;
    };
    agdaStdlibMeta = {
      url = "github:omelkonian/stdlib-meta/dadb6a468b9cdc47442b48a47b848f8e8fbffda7";
      flake = false;
    };
    tullia.url = "github:input-output-hk/tullia";
  };

  outputs =
    { self
    , nixpkgs
    , nixpkgs_customagda
    , flake-utils
    , tullia
    , agda
    , agdaStdlib
    , agdaStdlibMeta
    , ...
  }@inputs: (flake-utils.lib.eachDefaultSystem (system: let
    agdaOverlay = agda.overlay;
    pkgs = import nixpkgs { inherit system; };
    customAgdaPkgs = import nixpkgs_customagda {
      inherit system;
      overlays = [agda.overlay];
    };
    agdaStdlib = customAgdaPkgs.agdaPackages.standard-library.overrideAttrs (oldAttrs: {
      version = "1.7";
      src = customAgdaPkgs.fetchFromGitHub {
        repo = "agda-stdlib";
        owner = "input-output-hk";
        rev = "f8fdb925c74e8d3b0c88e2a5520bc11e606d34c6";
        sha256 = "BoK/IZsOn8gnUolI8DOZa6IOoXF8E95s2e8vZyUpMZs=";
      };
    });

    agdaStdlibMeta = customAgdaPkgs.agdaPackages.mkDerivation {
      pname = "agda-stdlib-meta";
      version = "0.1";
      src = customAgdaPkgs.fetchFromGitHub {
        repo = "stdlib-meta";
        owner = "omelkonian";
        rev = "dadb6a468b9cdc47442b48a47b848f8e8fbffda7";
        sha256 = "YkUtM5Gos6xd7ZsZPqcuVy6DZqNA7n/exPfQngir+y0=";
      };
      patches = [ ./stdlib-meta-update-imports.patch ];
      meta = { };
      libraryFile = "stdlib-meta.agda-lib";
      everythingFile = "Main.agda";
      buildInputs = [ agdaStdlib ];
    };

    deps = [ agdaStdlib agdaStdlibMeta ];
    agdaWithPkgs = customAgdaPkgs.agda.withPackages { pkgs = deps; ghc = pkgs.ghc; };
    # a parameterized attribute set containing derivations for: 1) executable spec 2) docs
    specsDerivations = { dir, agdaLedger, agdaLedgerFile, hsMainFile, doc }: {
      executableSpec = let
        hsSrc = pkgs.stdenv.mkDerivation {
          pname = "Agda-ledger-${dir}-hs-src";
          version = "0.1";
          src = "${agdaLedger}";
          meta = { };
          buildInputs = [ agdaWithPkgs ];
          buildPhase = "";
          installPhase = ''
            mkdir -p $out
            agda -c --ghc-dont-call-ghc --compile-dir $out ${dir}/${agdaLedgerFile}
            cp ${dir}/${hsMainFile} $out
            cp ${dir}/agda-ledger-executable-spec.cabal $out
            # Append all the modules generated by MAlonzo to the cabal file
            find $out/MAlonzo -name "*.hs" -print | sed "s#^$out/#        #;s#\.hs##;s#/#.#g" >> $out/agda-ledger-executable-spec.cabal
          '';
        };
      in pkgs.haskellPackages.callCabal2nix "Agda-ledger-executable-spec" "${hsSrc}" { };

      docs = pkgs.stdenv.mkDerivation {
        pname = "${dir}-docs";
        version = "0.1";
        src = "${agdaLedger}";
        meta = { };
        buildInputs = [
          agdaWithPkgs
          (pkgs.texlive.combine {
            inherit (pkgs.texlive)
              scheme-small
              xits
              collection-latexextra
              collection-latexrecommended
              collection-mathscience
              bclogo
              latexmk;
          })
        ];
        buildPhase = ''
          ls ${dir}/*.lagda | xargs -n 1 agda --latex
          cd latex && latexmk -xelatex ${dir}/${doc}.tex && cd ..
        '';
        installPhase = ''
          mkdir -p $out
          agda --html --html-dir $out/html ${dir}/${doc}.lagda
          cp latex/${doc}.pdf $out
        '';
      };
    };
  in rec {
    devShell = pkgs.mkShell {
      nativeBuildInputs = [
        pkgs.cabal-install
        (pkgs.haskellPackages.ghcWithPackages (pkgs: with pkgs; [
          packages.ledger.executableSpec
          packages.midnight.executableSpec
        ]))
      ];
    };
    packages = let
      agdaPackages = {
        agda = agdaWithPkgs;
        agdaLedger = customAgdaPkgs.agdaPackages.mkDerivation {
          pname = "Agda-ledger";
          version = "0.1";
          src = ./src;
          meta = { };
          buildInputs = deps;
          postInstall = "cp -r latex $out";
          extraExtensions = [ "hs" "cabal" ];
        };
      };
    in flake-utils.lib.flattenTree (
      agdaPackages //
      __mapAttrs (_: nixpkgs.lib.recurseIntoAttrs) {
        ledger = specsDerivations {
          inherit (agdaPackages) agdaLedger;
          dir = "Ledger";
          agdaLedgerFile = "Foreign/HSLedger.agda";
          hsMainFile = "HSLedgerTest.hs";
          doc = "Ledger";
        };
        midnight = specsDerivations {
          inherit (agdaPackages) agdaLedger;
          dir = "MidnightExample";
          agdaLedgerFile = "HSLedger.agda";
          hsMainFile = "Main.hs";
          doc = "PDF";
        };
      }
    );
  } //
    tullia.fromSimple system (import nix/tullia.nix)
  ));

  nixConfig = {
    extra-substituters = [ "https://cache.iog.io" ];
    extra-trusted-public-keys = [ "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ=" ];
    allow-import-from-derivation = true;
  };
}
