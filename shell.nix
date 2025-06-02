{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with pkgs;

let
  specs = callPackage ./default.nix {};  # get deps list, etc. from default.nix
  LOCALE_ARCHIVE =
    pkgs.lib.optionalString pkgs.stdenv.isLinux "${pkgs.glibcLocales}/lib/locale/locale-archive";

  # Python environment with packages needed for markdown migration and mkdocs site build
  pythonEnv = pkgs.python311.withPackages (ps: [ps.pip
                                                ps.mkdocs
                                                ps.mkdocs-material
                                                #ps.mkdocs-with-pdf     # if we could pin to a more recent
                                                                        # nixpkgs, mkdocs-with-pdf might be available
                                                ps.pymdown-extensions
                                                ps.pyyaml             # for mkdocs.yml generation
                                               ]
  );

in {
  shell = mkShell {
    nativeBuildInputs = [
      specs.fls-shake
      specs.agdaWithDeps
      specs.latex
      python311
      hpack
      pkgs.glibcLocales
    ];
    shellHook = '' export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8; export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}; '';
  };

  run = {
    shell = mkShell {
      nativeBuildInputs = [
        specs.fls-shake
        specs.agdaWithDeps
        specs.latex
        python311
        cabal-install
        hpack
        pkgs.glibcLocales
      ];
      shellHook = '' export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8; export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}; '';
    };
  };

  # shell for markdown doc pipeline
  markdownDocsShell = mkShell {
    nativeBuildInputs = [
      specs.agdaWithDeps  # Agda 2.7.0.1 + pinned libs from default.nix
      pkgs.pandoc         # for tex to md conversion
      pkgs.texlive.combined.scheme-small # for LaTeX to Markdown conversion
      pkgs.dejavu_fonts
      pythonEnv           # use the combined Python environment defined above for pipeline scripts
      pkgs.coreutils      # for 'mkdir', 'cp', 'rm', 'basename', 'dirname'
      pkgs.mdbook         # mdbook and its dependencies (for web site and pdf backend):
      #pkgs.mdbook-pdf    # if we could pin to a more recent nixpkgs, this might be available
      pkgs.chromium       # required by mdbook-pdf for rendering
      pkgs.cargo          # for installing pandoc backend
      pkgs.pkg-config     # for building some cargo packages
      pkgs.openssl        # for building some cargo packages

     # Dependencies for the 'tectonic' PDF engine used by mdbook-latex

    ];
    shellHook = ''
      export LANG=en_US.UTF-8
      export LC_ALL=en_US.UTF-8
      export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}
      export PATH="$HOME/.cargo/bin:$PATH"    # ensure ~/.cargo/bin in PATH for cargo installed tools
      echo "----------------------------------------------------"
      echo "Entered Agda Markdown Documentation Development Shell!"
      echo "Using Agda: $(agda --version || echo 'agda command failed')" # Check the version!
      echo "Using Python: $(python --version || echo 'python command failed')" # Check Python version
      echo "Using mdbook: $(mdbook --version || echo 'mdbook command not found')"
      echo "Using Chromium: $(chromium --version || echo 'chromium command not found')"
      echo "----------------------------------------------------"
    '';
  };

}
