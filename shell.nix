{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with pkgs;

let
  specs = callPackage ./default.nix {};
  LOCALE_ARCHIVE = pkgs.lib.optionalString
    pkgs.stdenv.isLinux
    "${pkgs.glibcLocales}/lib/locale/locale-archive";
in {
  shell = mkShell {
    nativeBuildInputs = [
      specs.fls-shake
      specs.agdaWithDeps
      specs.latex
      python310
      hpack
      pkgs.glibcLocales
    ];

    shellHook = ''
      export LANG=en_US.UTF-8
      export LC_ALL=en_US.UTF-8
      export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}
    '';    

  };

  run = {
    shell = mkShell {
      nativeBuildInputs = [
        specs.fls-shake
        specs.agdaWithDeps
        cabal-install
        pkgs.glibcLocales
      ];
      shellHook = ''
        export LANG=en_US.UTF-8
        export LC_ALL=en_US.UTF-8
        export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}
      '';    
    };
  };

  # shell for markdown doc pipeline
  markdownDocsShell = mkShell {
    nativeBuildInputs = [
      specs.agdaWithDeps  # Agda with our project's libs
      pkgs.pandoc         # for tex to md conversion
      # (could add pkgs.lua here but Lua is usually bundled with pandoc)

      # Python is needed for the pipeline scripts
      pkgs.python310

      # mkdocs plus theme and extensions
      pkgs.mkdocs
      pkgs.python310Packages.mkdocs-material    # material theme
      pkgs.python310Packages.pymdown-extensions # tabbed, attr_list, etc.

      # tools for the master build script
      pkgs.findutils      # for 'find' command
      pkgs.coreutils      # for 'mkdir', 'cp', 'rm', 'basename', 'dirname'
      # pkgs.gawk         # If needed for text processing in shell script
    ];
    shellHook = ''
      export LANG=en_US.UTF-8
      export LC_ALL=en_US.UTF-8
      export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}
      echo "----------------------------------------------------"
      echo "Entered Agda Markdown Documentation Development Shell!"
      echo "Tools available: agda, pandoc, python3, mkdocs, etc."
      echo "----------------------------------------------------"
    '';
  };

}
