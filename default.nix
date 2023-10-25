{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with pkgs;
let
  customAgda = import sources.agda-nixpkgs {
    inherit (pkgs) system;
  };

  agdaStdlib = customAgda.agdaPackages.standard-library.overrideAttrs (oldAttrs: {
    version = "1.7.2";
    src = fetchFromGitHub {
      repo = "agda-stdlib";
      owner = "input-output-hk";
      rev = "bdfab77b179c937856c49d72321ca26e2a27d568";
      sha256 = "+PMZjmMK5xz+3Va7RN1ErtQghzpUlzsc9JBUoL+iasc=";
    };
  });

  agdaStdlibMeta = customAgda.agdaPackages.mkDerivation {
    pname = "agda-stdlib-meta";
    version = "0.1";
    src = fetchFromGitHub {
      repo = "stdlib-meta";
      owner = "input-output-hk";
      rev = "897555aefd77c83e88492255641da3bcc4879461";
      sha256 = "EIKcLjGdnI/6nSCI18v7kPxoojAWsz8O5d9wwol2M0w=";
    };
    meta = { };
    libraryFile = "stdlib-meta.agda-lib";
    everythingFile = "Main.agda";
    buildInputs = [ agdaStdlib ];
  };

  deps = [ agdaStdlib agdaStdlibMeta ];
  agdaWithPkgs = p: customAgda.agda.withPackages { pkgs = p; ghc = pkgs.ghc; };

in
rec {

  agdaWithStdLibMeta = agdaWithPkgs deps;
  agda = agdaWithPkgs (deps ++ [ formalLedger ]);

  latex = texlive.combine {
    inherit (texlive)
      scheme-small
      xits
      collection-latexextra
      collection-latexrecommended
      collection-mathscience
      bclogo
      latexmk;
  };

  formalLedger = customAgda.agdaPackages.mkDerivation {
    pname = "formal-ledger";
    version = "0.1";
    src = ./src;
    meta = { };
    buildInputs = deps;
    postInstall = ''
      cp -r latex/ Makefile $out
      sh checkTypeChecked.sh
      '';
    extraExtensions = [ "hs" "cabal" ];
  };

  mkSpecDerivation = { project, main }: rec {
    docs = stdenv.mkDerivation {
      pname = "docs";
      version = "0.1";
      src = "${formalLedger}";
      meta = { };
      buildInputs = [ agdaWithStdLibMeta latex ];
      buildPhase = ''
        OUT_DIR=$out make "${project}".docs
      '';
      doCheck = true;
      checkPhase = ''
        test -n "$(find $out/pdfs/ -type f -name '*.pdf')"
      '';
      dontInstall = true;
    };

    html = stdenv.mkDerivation {
      pname = "html";
      version = "0.1";
      src = "${formalLedger}";
      meta = { };
      buildInputs = [ agdaWithStdLibMeta ];
      buildPhase = ''
        OUT_DIR=$out make "${project}".html
      '';
      doCheck = true;
      checkPhase = ''
        test -n "$(find $out/html/ -type f -name '*.html')"
      '';
      dontInstall = true;
    };

    hsSrc = stdenv.mkDerivation {
      pname = "hs-src";
      version = "0.1";
      src = "${formalLedger}";
      meta = { };
      buildInputs = [ agdaWithStdLibMeta ];
      configurePhase = ''
        export HOME=$TMP
      '';
      LANG = "en_US.UTF-8";
      LC_ALL = "en_US.UTF-8";
      LOCALE_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
      buildPhase = ''
        OUT_DIR=$out make "${project}".hs
      '';
      doCheck = true;
      checkPhase = ''
        test -n "$(find $out/haskell/ -type f -name '*.hs')"
        # OUT_DIR=$out make "${project}".hsTest
      '';
      dontInstall = true;
    };

    # hsDocs = stdenv.mkDerivation {
    #   pname = "hs-docs";
    #   version = "0.1";
    #   src = "${formalLedger}";
    #   meta = { };
    #   buildInputs = [ agdaWithStdLibMeta ];
    #   configurePhase = ''
    #     export HOME=$TMP
    #   '';
    #   buildPhase = ''
    #     OUT_DIR=$out make "${project}".hsDocs
    #   '';
    #   doCheck = true;
    #   checkPhase = ''
    #     test -n "$(find $out/haskell/ -type f -name '*.html')"
    #   '';
    #   dontInstall = true;
    # };

    hsExe = haskellPackages.callCabal2nix "${project}" "${hsSrc}/haskell/${main}" { };

  };

  ledger = mkSpecDerivation {
    project = "ledger";
    main = "Ledger";
  };
  midnight = mkSpecDerivation {
    project = "midnight";
    main = "MidnightExample";
  };
}
