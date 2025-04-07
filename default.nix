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
    LOCALE_ARCHIVE = pkgs.lib.optionalString
      pkgs.stdenv.isLinux
      "${pkgs.glibcLocales}/lib/locale/locale-archive";
  };

  agdaStdlib = agdaPackages.standard-library.overrideAttrs (oldAttrs: {
                 version = "2.2";
                 src = fetchFromGitHub {
                   repo = "agda-stdlib";
                   owner = "agda";
                   rev = "v2.2";
                   hash = "sha256-/Fy5EOSbVNXt6Jq0yKSnlNPW4SYfn+eCTAYFnMZrbR0=";
                 };
               });

  agdaStdlibClasses = agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-stdlib-classes";
    version = "2.2.+";
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

  agdaStdlibMeta = agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-stdlib-meta";
    version = "2.2.+";
    src = fetchFromGitHub {
      repo = "agda-stdlib-meta";
      owner = "agda";
      rev = "5ff853375180ef69f243ce72f2d3f6294bdb6aff";
      sha256 = "sha256-CNKEnDUToKEv+6Gaa8p5igLNpQDuasQ01JJLOXcU1bA=";
    };
    meta = { };
    libraryFile = "agda-stdlib-meta.agda-lib";
    everythingFile = "standard-library-meta.agda";
    buildInputs = [ agdaStdlib agdaStdlibClasses ];
  };

  agdaSets = agdaPackages.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-sets";
    version = "";
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

  fs = pkgs.lib.fileset;
  addToAgdaSrc = other: fs.toSource {
    root = ./.;
    fileset = fs.unions ([ ./src ./formal-ledger.agda-lib ] ++ other);
  };

in rec
{

  fls-shake = haskellPackages.callCabal2nix "fls-shake" ./fls-shake { };

  agdaWithDeps = agda.withPackages { pkgs = deps; };

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

  formalLedger = agdaPackages.mkDerivation {
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
