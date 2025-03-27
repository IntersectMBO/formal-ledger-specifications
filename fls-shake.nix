{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "fls-shake";
  version = "0.1.0.0";

  src = ./.;

  buildInputs = with pkgs.haskellPackages; [
    ghc
    shake
    hashable
    binary
    deepseq
  ];

  buildPhase = ''
    ghc -o fls-shake Shakefile.hs -threaded
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv fls-shake $out/bin/
  '';
}
