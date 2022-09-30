{ pkgs ? import <nixpkgs> { } }: with pkgs;
mkShell {
  nativeBuildInputs = [
    cabal-install
    (haskellPackages.ghcWithPackages (pkgs: with pkgs; [
      (callPackage ./default.nix { }).ledgerExecutableSpec
      (callPackage ./default.nix { }).ledgerExecutableSpecMidnight
    ]))
  ];
}
