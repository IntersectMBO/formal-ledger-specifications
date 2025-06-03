{ sources ? import ./build-tools/nix/sources.nix
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
      pythonEnv           # use the combined Python environment defined above for pipeline scripts
      pkgs.coreutils      # for 'mkdir', 'cp', 'rm', 'basename', 'dirname'
    ];
    shellHook = ''
      export LANG=en_US.UTF-8
      export LC_ALL=en_US.UTF-8
      export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}
      echo "----------------------------------------------------"
      echo "Entered Agda Markdown Documentation Development Shell!"
      echo "Using Agda: $(agda --version || echo 'agda command failed')" # Check the version!
      echo "Using Python: $(python --version || echo 'python command failed')" # Check Python version
      echo "----------------------------------------------------"
    '';
  };

}
