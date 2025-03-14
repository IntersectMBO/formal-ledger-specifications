{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with pkgs;
let
  locales = {
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux"
                     then "${pkgs.glibcLocales}/lib/locale/locale-archive"
                     else "";
  };

  customAgda = import sources.agda-nixpkgs {
    inherit (pkgs) system;
  };

  agdaStdlib = customAgda.agdaPackages.standard-library;

  agdaStdlibClasses = customAgda.agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-stdlib-classes";
    version = "2.0";
    src = fetchFromGitHub {
      repo = "agda-stdlib-classes";
      owner = "omelkonian";
      rev = "28df278381c94a25c54f6819524cd9f8cb99f092";
      sha256 = "sha256-TdPJ3K4jyAIQgX1sUrqd0QeA72n2mkBVzlg8WfrqWWY=";
    };
    meta = { };
    libraryFile = "agda-stdlib-classes.agda-lib";
    everythingFile = "standard-library-classes.agda";
    buildInputs = [ agdaStdlib ];
  };

  agdaStdlibMeta = customAgda.agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-stdlib-meta";
    version = "2.1.1";
    src = fetchFromGitHub {
      repo = "stdlib-meta";
      owner = "omelkonian";
      rev = "v2.1.1";
      sha256 = "qOoThYMG0dzjKvwmzzVZmGcerfb++MApbaGRzLEq3/4=";
    };
    meta = { };
    libraryFile = "agda-stdlib-meta.agda-lib";
    everythingFile = "Main.agda";
    buildInputs = [ agdaStdlib agdaStdlibClasses ];
  };

  agdaSets = customAgda.agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-sets";
    version = "2.1.1";
    src = fetchFromGitHub {
      repo = "agda-sets";
      owner = "input-output-hk";
      rev = "f517d0d0c1ff1fd6dbac8b34309dea0e1aea6fc6";
      sha256 = "sha256-OsdDNNJp9NWDgDM0pDOGv98Z+vAS1U8mORWF7/B1D7k=";
    };
    meta = { };
    libraryFile = "abstract-set-theory.agda-lib";
    everythingFile = "src/abstract-set-theory.agda";
    buildInputs = [ agdaStdlib agdaStdlibClasses agdaStdlibMeta ];
  };

  deps = [ agdaStdlib agdaStdlibClasses agdaStdlibMeta agdaSets ];
  agdaWithPkgs = p: customAgda.agda.withPackages { pkgs = p; ghc = pkgs.ghc; };
  agdaWithDeps = agdaWithPkgs deps;

  latex = texlive.combine {
    inherit (texlive)
      scheme-small
      xits
      collection-latexextra
      collection-latexrecommended
      collection-mathscience
      bclogo
      biber
      biblatex
      biblatex-ieee
      biblatex-software
      latexmk
      environ;
  };

in rec
{

  formalLedger = customAgda.agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "formal-ledger";
    version = "0.1";
    src = ./.;
    meta = { };
    buildInputs = deps;
    buildPhase = ''
      agda --profile=modules src/Everything.agda | tee typecheck.log
    '';
    doCheck = true;
    checkPhase = ''
      sh scripts/checkTypeChecked.sh -m
    '';
    postInstall = ''
      awk '/^Total/{p=1}p' typecheck.log > "$out/typecheck.time"
      cp -r latex/ Makefile $out
      rm typecheck.log
    '';
    extraExtensions = [ "hs" "cabal" "py" ];
  };

  mkDocsDerivation = { pname, version, project }: stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = pname;
    version = version;
    src = ./.;
    meta = { };
    buildInputs = [ agdaWithDeps latex python310 ];
    buildPhase = ''
        OUT_DIR=$out make ${project}.docs
      '';
    doCheck = true;
    checkPhase = ''
        test -n "$(find $out/pdfs/ -type f -name '*.pdf')"
      '';
    dontInstall = true;
  };

  html = stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "html";
    version = "0.1";
    src = ./.;
    meta = { };
    buildInputs = [ agdaWithDeps ];
    buildPhase = ''
      OUT_DIR=$out make ledger.html
    '';
    doCheck = true;
    checkPhase = ''
      test -n "$(find $out/html/ -type f -name '*.html')"
    '';
    dontInstall = true;
  };

  hsSrc = stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "hs-src";
    version = "0.1";
    src = ./.;
    meta = { };
    buildInputs = [ agdaWithDeps ];
    buildPhase = ''
      OUT_DIR=$out make ledger.hs
    '';
    doCheck = true;
    checkPhase = ''
      test -n "$(find $out/haskell/ -type f -name '*.hs')"
    '';
    dontInstall = true;
  };

  ledger = {
    html   = html;
    hsSrc  = hsSrc;
    docs   = mkDocsDerivation { pname = "docs"; version = "0.1"; project = "ledger"; };
    conway = mkDocsDerivation { pname = "docs"; version = "0.1"; project = "ledger.conway"; };
  };
}
