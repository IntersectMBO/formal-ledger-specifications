{ pkgs ? import <nixpkgs> {} }:

let
  ghcEnv = pkgs.haskellPackages.ghcWithPackages (hp: [
    hp.shake
    hp.hashable
    hp.binary
    hp.deepseq
  ]);
in
pkgs.stdenv.mkDerivation {
  pname = "fls-shake";
  version = "0.1.0.0";

  src = ./.;

  nativeBuildInputs = [ ghcEnv ];

  buildPhase = ''
    ghc -o fls-shake Shakefile.hs -threaded
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv fls-shake $out/bin/
  '';
}
