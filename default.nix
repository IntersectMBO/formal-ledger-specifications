{
  sources ? import ./build-tools/nix/sources.nix,
  nixpkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  },
}:

with nixpkgs;
let
  locales = {
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    LOCALE_ARCHIVE = lib.optionalString stdenv.isLinux "${glibcLocales}/lib/locale/locale-archive";
  };

  our-agda = (
    agdaPackages.override { Agda = import ./build-tools/agda/nix/fls-agda.nix { inherit nixpkgs; }; }
  );

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
    buildInputs = [
      agda-stdlib
      agda-stdlib-classes
    ];
  };

  agda-sets = our-agda.mkDerivation {
    inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
    pname = "agda-sets";
    version = "+";
    src = sources.agda-sets;
    meta = { };
    libraryFile = "abstract-set-theory.agda-lib";
    everythingFile = "src/abstract-set-theory.agda";
    buildInputs = [
      agda-stdlib
      agda-stdlib-classes
      agda-stdlib-meta
    ];
  };

  iog-agda-prelude = our-agda.mkDerivation {
    pname = "iog-prelude";
    version = "+";
    meta = { };
    src = sources.iog-agda-prelude;
    libraryFile = "iog-prelude.agda-lib";
    everythingFile = "src/Everything.agda";
    buildInputs = [
      agda-stdlib
      agda-stdlib-classes
    ];
  };

  agda-package-set = [
    agda-stdlib
    agda-stdlib-classes
    agda-stdlib-meta
    agda-sets
    iog-agda-prelude
  ];

  agdaWithPackages = our-agda.agda.withPackages agda-package-set;

  addToAgdaSrc =
    other:
    lib.fileset.toSource {
      root = ./.;
      fileset = lib.fileset.unions (
        [
          ./src
          ./formal-ledger.agda-lib
          ./src-lib-exts
        ]
        ++ other
      );
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
      environ
      ;
  };

  fls-shake = (import ./build-tools/shake/nix/fls-shake.nix { inherit nixpkgs; }).overrideAttrs (
    newAttrs: oldAttrs: {
      nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [ makeWrapper ];
      postFixup = ''
        wrapProgram $out/bin/fls-shake \
          --prefix PATH : ${
            lib.makeBinPath [
              agdaWithPackages
              python311
              hpack
              latex
            ]
          }
      '';
    }
  );

  formal-ledger = our-agda.mkDerivation {
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

  mkDerivation =
    args:
    let
      defaults = {
        inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
        version = "0.1";
        meta = { };
        buildInputs = (args.buildInputs or [ ]) ++ [
          fls-shake
          formal-ledger
        ];
        copyAgdaBuild = ''
          cp -r "${formal-ledger}/_build" .
          find _build -type d -print0 | xargs -0 chmod 755
          find _build -type f -print0 | xargs -0 chmod 644
        '';
        preBuildPhases = (args.preBuildPhases or [ ]) ++ [ "copyAgdaBuild" ];
      };
    in
    stdenv.mkDerivation (args // defaults);

  mkPdfDerivation =
    { pname, project }:
    mkDerivation {
      pname = "${pname}-${project}";
      src = addToAgdaSrc [
        ./build-tools/static/latex
        ./build-tools/scripts/agda2vec.py
        ./build-tools/scripts/hldiff.py
      ];
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

  html = mkDerivation {
    pname = "html";
    src = addToAgdaSrc [ ];
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

  hs-src = mkDerivation {
    pname = "hs-src";
    src = addToAgdaSrc [ ./build-tools/static/hs-src ];
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
    fullspec = mkPdfDerivation {
      pname = "docs";
      project = "cardano";
    };
    diffspec = mkPdfDerivation {
      pname = "docs";
      project = "conway";
    };
  };

  devShells = {
    # 1. DEVELOPMENT SHELL - For everyday Agda development work
    default = mkShell {
      inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
      packages = [
        agdaWithPackages # Agda 2.7.0.1 + all pinned libraries
        fls-shake # Build system for generating outputs
        python311 # Python for basic scripting
        hpack # Haskell package helper
        coreutils # Basic shell utilities
      ];
      shellHook = ''
        echo "Agda Development Environment"
        echo "Agda: $(agda --version)"
        echo "Available: agda, fls-shake, python3, hpack"
        echo "Use 'fls-shake --help' to see build targets"
      '';
    };

    # 2. CI SHELL - Minimal environment for CI builds and testing
    ci = mkShell {
      inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
      packages = [
        fls-shake # For building artifacts
      ];
      shellHook = ''
        echo "CI Build Environment"
        echo "Minimal environment for automated builds"
      '';
    };

    # 3. DOCS SHELL - Complete documentation pipeline (mkdocs + mdbook)
    docs = mkShell {
      inherit (locales) LANG LC_ALL LOCALE_ARCHIVE;
      packages = [
        # Core Agda development
        agdaWithPackages
        fls-shake

        # Document conversion tools
        pandoc
        latex # Your custom LaTeX setup from default.nix
        dejavu_fonts

        # Python environment for mkdocs pipeline
        (python311.withPackages (
          ps: with ps; [
            pip
            mkdocs
            mkdocs-material
            pymdown-extensions
            pyyaml
            # Add any other Python packages needed for conversion scripts
          ]
        ))

        # mdbook ecosystem
        mdbook
        chromium # Required by mdbook-pdf for rendering
        cargo # For installing mdbook extensions
        pkg-config # For building cargo packages
        openssl # For building cargo packages

        # Additional tools
        coreutils
        hpack
      ];

      shellHook = ''
        export PATH="$HOME/.cargo/bin:$PATH"    # Ensure cargo tools are in PATH

        echo "----------------------------------------------------"
        echo "Documentation Publishing Environment"
        echo "Agda: $(agda --version)"
        echo "Python: $(python --version)"
        echo "mdbook: $(mdbook --version)"
        echo "Pandoc: $(pandoc --version)"
        echo "Chromium: $(chromium --version 2>/dev/null | head -1 || echo 'available')"
        echo ""
        echo "Available workflows:"
        echo "  • Agda development: agda, fls-shake"
        echo "  • LaTeX→Markdown: pandoc, python scripts"
        echo "  • MkDocs sites: mkdocs build"
        echo "  • mdbook sites: mdbook build"
        echo "  • Install mdbook extensions: cargo install mdbook-pdf"
        echo "----------------------------------------------------"
      '';
    };
  };
in
{
  inherit
    agdaWithPackages
    fls-shake
    formal-ledger
    hs-src
    html
    docs
    devShells
    ;
}
