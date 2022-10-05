{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with pkgs;

mkShell {
  nativeBuildInputs = [
    cabal-install
    (haskellPackages.ghcWithPackages (pkgs: with pkgs; [
      (callPackage ./default.nix { }).ledger.executableSpec
      (callPackage ./default.nix { }).midnight.executableSpec
    ]))
  ];
}
