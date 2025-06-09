{ sources ? import ./build-tools/nix/sources.nix
, nixpkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with nixpkgs;
let
  locales = {
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    LOCALE_ARCHIVE = lib.optionalString
      stdenv.isLinux
      "${glibcLocales}/lib/locale/locale-archive";
  };

  our-agda = callPackage ./build-tools/nix/agda {
    inherit nixpkgs;
    Agda = import ./build-tools/agda/nix/fls-agda.nix { inherit nixpkgs; };
  };

  agda-stdlib = our-agda.mkDerivation {
    pname = "standard-library";
    version = "2.2";
    src = sources.agda-stdlib;
    nativeBuildInputs = [ (haskellPackages.ghcWithPackages (self: [ self.filemanip ])) ];
    meta = { };
    preConfigure = ''
      runhaskell GenerateEverything.hs --include-deprecated
      # We will only build/consider Everything.agda, in particular we don't want Everything*.agda
      # do be copied to the store.
      rm EverythingSafe.agda
    '';
  };

  agda-stdlib-classes = our-agda.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-stdlib-classes";
    version = "2.2.+";
    src = sources.agda-stdlib-classes;
    meta = { };
    libraryFile = "agda-stdlib-classes.agda-lib";
    everythingFile = "standard-library-classes.agda";
    buildInputs = [ agda-stdlib ];
  };

  agda-stdlib-meta = our-agda.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-stdlib-meta";
    version = "2.2.+";
    src = sources.agda-stdlib-meta;
    meta = { };
    libraryFile = "agda-stdlib-meta.agda-lib";
    everythingFile = "standard-library-meta.agda";
    buildInputs = [ agda-stdlib agda-stdlib-classes ];
  };

  agda-sets = our-agda.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-sets";
    version = "+";
    src = sources.agda-sets;
    meta = { };
    libraryFile = "abstract-set-theory.agda-lib";
    everythingFile = "src/abstract-set-theory.agda";
    buildInputs = [ agda-stdlib agda-stdlib-classes agda-stdlib-meta ];
  };

  iog-agda-prelude = our-agda.mkDerivation {
    pname = "iog-prelude";
    version = "+";
    meta = { };
    src = sources.iog-agda-prelude;
    libraryFile = "iog-prelude.agda-lib";
    everythingFile = "src/Everything.agda";
    buildInputs = [ agda-stdlib agda-stdlib-classes ];
  };

  agda-package-set = [ agda-stdlib
                       agda-stdlib-classes
                       agda-stdlib-meta
                       agda-sets
                       iog-agda-prelude
                     ];

  agdaWithPackages = our-agda.withPackages agda-package-set;

  fs = lib.fileset;

  addToAgdaSrc = other: fs.toSource {
    root = ./.;
    fileset = fs.unions ([ ./src ./formal-ledger.agda-lib ./src-lib-exts ] ++ other);
  };


  latex = texlive.combine {
    inherit (texlive)
      scheme-small
      xits
      dejavu
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

  fls-shake =
    ((import ./build-tools/shake/nix/fls-shake.nix { }).fls-shake).overrideAttrs
      (newAttrs: oldAttrs: {
        nativeBuildInputs = (oldAttrs.nativeBuildInputs or []) ++ [ makeWrapper ];
        postFixup = ''
          wrapProgram $out/bin/fls-shake \
            --prefix PATH : ${lib.makeBinPath [ agdaWithPackages python311 hpack latex ]}
        '';
      });

  mkDocsDerivation = { pname, version, project }: stdenv.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = pname;
    version = version;
    src = addToAgdaSrc [ ./build-tools/static/latex
                         ./build-tools/scripts/agda2vec.py
                         ./build-tools/scripts/hldiff.py ];
    meta = { };
    buildInputs = [ fls-shake ];
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
in
  {
    inherit agdaWithPackages fls-shake;

    formalLedger = our-agda.mkDerivation {
      inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
      pname = "formal-ledger";
      version = "0.1";
      src = addToAgdaSrc [ ./build-tools/scripts/checkTypeChecked.sh ];
      meta = { };
      buildInputs = agda-package-set;
      buildPhase = ''
        agda --profile=modules src/Ledger.agda | tee typecheck.log
      '';
      doCheck = true;
      checkPhase = ''
        sh build-tools/scripts/checkTypeChecked.sh
      '';
      installPhase = ''
        mkdir "$out"
        awk '/^Total/{p=1}p' typecheck.log > "$out/typecheck.time"
        cp -r _build "$out"
      '';
    };

    html = stdenv.mkDerivation {
      inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
      pname = "html";
      version = "0.1";
      src = addToAgdaSrc [];
      meta = { };
      buildInputs = [ fls-shake ];
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
      src = addToAgdaSrc [ ./build-tools/static/hs-src ];
      meta = { };
      buildInputs = [ fls-shake ];
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

    docs.conway = {
      fullspec = mkDocsDerivation { pname = "docs"; version = "0.1"; project = "cardano"; };
      diffspec = mkDocsDerivation { pname = "docs"; version = "0.1"; project = "conway";  };
    };

    devShells = {
      ci = mkShell {
        inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
        packages = [
          fls-shake
        ];
      };

      mkDocs = mkShell {
        inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
        packages = [
          agdaWithPackages # Agda 2.7.0.1 + pinned libs
          pandoc # for tex to md conversion
          (python311.withPackages (ps: with ps; [ pip
                                                 mkdocs
                                                 mkdocs-material
                                                 pymdown-extensions
                                                 pyyaml # for mkdocs.yml generation
                                               ]))
          coreutils # for 'mkdir', 'cp', 'rm', 'basename', 'dirname'
        ];
      };
    };

  }
