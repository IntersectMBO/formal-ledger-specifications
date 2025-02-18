{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with pkgs;

let specs = callPackage ./default.nix {};

in {
  shell = mkShell {
    nativeBuildInputs = [
      specs.agdaWithDeps
      specs.latex
      python310
    ];
  };

  run.shell = mkShell {
    nativeBuildInputs = [
      specs.agda
      cabal-install
    ];
  };
}
