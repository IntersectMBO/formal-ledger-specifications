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

in {
  shell = mkShell {
    nativeBuildInputs = [ specs.fls-shake specs.agdaWithDeps specs.latex python310 hpack pkgs.glibcLocales ];
    shellHook = '' export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8; export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}; '';
  };

  run = {
    shell = mkShell {
      nativeBuildInputs = [ specs.fls-shake specs.agdaWithDeps specs.latex python310 hpack pkgs.glibcLocales ];
      shellHook = '' export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8; export LOCALE_ARCHIVE=${LOCALE_ARCHIVE}; '';
    };
  };

  # shell for markdown doc pipeline
  markdownDocsShell = mkShell {
    nativeBuildInputs = [
      specs.agdaWithDeps  # Agda 2.7.0.1 + pinned libs from default.nix
      pkgs.pandoc         # for tex to md conversion
      # (could add pkgs.lua here but Lua is usually bundled with pandoc)

      # Python is needed for the pipeline scripts
      pkgs.python311

      # mkdocs plus theme and extensions
      pkgs.mkdocs
      pkgs.python311Packages.mkdocs-material    # material theme
      pkgs.python311Packages.pymdown-extensions # tabbed, attr_list, etc.
      pkgs.python311Packages.pyyaml

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
      echo "Using Agda: $(agda --version || echo 'agda command failed')" # Check the version!
      echo "Using Python: $(python --version || echo 'python command failed')" # Check Python version
      echo "----------------------------------------------------"
    '';
  };

}
