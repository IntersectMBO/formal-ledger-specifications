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
      owner = "agda";
      rev = "aa62ce6348d39c554ef89487079871d5590e155e";
      sha256 = "sha256-I/g0BOdeAHVEtsfmPBICySOd6Jz5ymGUSE/G66EfHK8=";
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

  fs = pkgs.lib.fileset;
  addToAgdaSrc = other: fs.toSource {
    root = ./.;
    fileset = fs.unions ([ ./src ./formal-ledger.agda-lib ] ++ other);
  };

in rec
{

  fls-shake = stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    name = "fls-shake";
    src = fs.toSource {
      root = ./.;
      fileset = ./Shakefile.hs;
    };
    nativeBuildInputs = [ (haskellPackages.ghcWithPackages (ps: with ps;
                            ([ shake binary deepseq hashable ]))) ];
    buildPhase = ''
      ghc -o fls-shake Shakefile.hs -threaded
    '';
    installPhase = ''
      mkdir -p "$out/bin"
      cp fls-shake "$out/bin/"
    '';
  };

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

  formalLedger = customAgda.agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "formal-ledger";
    version = "0.1";
    src = addToAgdaSrc [ ./scripts/checkTypeChecked.sh ];
    meta = { };
    buildInputs = deps;
    buildPhase = ''
      agda --profile=modules src/Everything.agda | tee typecheck.log
    '';
    doCheck = true;
    checkPhase = ''
      sh scripts/checkTypeChecked.sh
    '';
    installPhase = ''
      mkdir "$out"
      awk '/^Total/{p=1}p' typecheck.log > "$out/typecheck.time"
      cp -r _build "$out"
    '';
  };

  mkDocsDerivation = { pname, version, project }: stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = pname;
    version = version;
    src = addToAgdaSrc [ ./latex ./scripts/agda2vec.py ./scripts/hldiff.py ];
    meta = { };
    buildInputs = [ agdaWithDeps latex python310 fls-shake ];
    buildPhase = ''
      export XDG_CACHE_HOME="$(mktemp -d)"
      fls-shake --trace "${project}-ledger.pdf"
    '';
    installPhase = ''
      mkdir "$out"
      cp "dist/${project}-ledger.pdf" "$out"
    '';
    doInstallCheck = true;
    installCheckPhase = ''
      test -f "$out/${project}-ledger.pdf"
    '';
  };

  html = stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "html";
    version = "0.1";
    src = addToAgdaSrc [];
    meta = { };
    buildInputs = [ agdaWithDeps fls-shake ];
    buildPhase = ''
      fls-shake --trace html
    '';
    installPhase = ''
      mkdir "$out"
      cp -r dist/html "$out"
    '';
    doInstallCheck = true;
    installCheckPhase = ''
      test -f "$out/html/index.html"
    '';
  };

  hsSrc = stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "hs-src";
    version = "0.1";
    src = addToAgdaSrc [ ./hs-src ];
    meta = { };
    buildInputs = [ agdaWithDeps fls-shake ];
    buildPhase = ''
      fls-shake --trace hs
    '';
    installPhase = ''
      mkdir "$out"
      cp -r dist/hs "$out"
    '';
    doInstallCheck = true;
    installCheckPhase = ''
      test -f "$out/hs/cardano-ledger-executable-spec.cabal"
    '';
  };

  ledger = {
    html   = html;
    hsSrc  = hsSrc;
    docs   = mkDocsDerivation { pname = "docs"; version = "0.1"; project = "cardano"; };
    conway = mkDocsDerivation { pname = "docs"; version = "0.1"; project = "conway"; };
  };
}
