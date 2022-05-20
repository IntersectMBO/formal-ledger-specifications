{ pkgs ? import <nixpkgs> {} }: with pkgs;
mkShell {
  nativeBuildInputs = [ cabal-install (haskellPackages.ghcWithPackages (pkgs: with pkgs; [ (callPackage ./default.nix {}).agda-ledger-executable-spec ])) ];
}
