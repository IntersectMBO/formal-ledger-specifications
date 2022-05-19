{ pkgs ? import <nixpkgs> {} }: with pkgs;
mkShell {
  nativeBuildInputs = [ cabal-install (haskellPackages.ghcWithPackages (pkgs: with pkgs; [ ieee (callPackage ./default.nix {}).ledger-hs-package ])) ];
}
