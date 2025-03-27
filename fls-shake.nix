{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

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

  src = pkgs.fileset.toSource {
      root = ./.;
      fileset = ./Shakefile.hs;
    };

  nativeBuildInputs = [ ghcEnv ];

  buildPhase = ''
    ghc -o fls-shake Shakefile.hs -threaded
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv fls-shake $out/bin/
  '';
}
