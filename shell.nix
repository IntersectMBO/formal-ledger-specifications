{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
, agdaCompatSrc ? null # accept source path from flake input
}:

with pkgs;

let
  specs = callPackage ./default.nix {};  # get deps list, etc. from default.nix
  LOCALE_ARCHIVE = pkgs.lib.optionalString
    pkgs.stdenv.isLinux
    "${pkgs.glibcLocales}/lib/locale/locale-archive";

  # --- Build compatible Agda compiler from source ---
  # Assume agdaCompatSrc points to a source tree that callPackage can handle.
  # It might need adjustment based on Agda's build system at v2.7.0.1.
  # It will use the GHC provided by `pkgs` by default (via haskellPackages).
  # If this build fails, we might need to overlay or use a different pkgs set
  # with a specific GHC known to work with Agda 2.7.0.1.
  compatibleAgdaCompiler =
    if agdaCompatSrc != null then
      (haskellPackages.callCabal2nix "agda-compat" agdaCompatSrc {})
      # Alternative if above fails: maybe needs a proper overlay or specific builder like pkgs.agda.override { src = agdaCompatSrc; } if that works
    else
      (throw "Compatible Agda source not passed correctly from flake.nix");

  # --- Create the Agda environment for the markdown shell ---
  # Uses the *compatible* compiler built above + *pinned* libraries from default.nix's 'deps'
  agdaForMarkdown = compatibleAgdaCompiler.withPackages { pkgs = specs.deps; };


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
      agdaForMarkdown     # *** USE THE COMPATIBLE AGDA + PINNED LIBS ***
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
