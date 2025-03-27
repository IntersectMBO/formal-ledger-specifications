{ pkgs ? import <nixpkgs> {} }:

pkgs.haskellPackages.callPackage (pkgs.runCommand "fls-shake" {
  buildInputs = with pkgs.haskellPackages; [
    ghc
    shake
    hashable
    binary
    deepseq
  ];
} ''
  mkdir -p $out/bin
  ghc -o $out/bin/fls-shake Shakefile.hs -threaded
'') {}
