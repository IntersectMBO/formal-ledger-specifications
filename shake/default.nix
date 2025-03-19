{ sources ? import ../nix/sources.nix
, pkgs    ? import sources.nixpkgs {}
}:
let
  name = "fls-shake";
  ghc  = pkgs.haskellPackages.ghcWithPackages (ps: with ps;
    ([ shake binary deepseq hashable ]));
in
pkgs.stdenv.mkDerivation {
  name = name;
  src = ./.;
  nativeBuildInputs = [ ghc ];

  buildPhase = ''
  ghc -o ${name} Main.hs -threaded -with-rtsopts -A128M -rtsopts
  '';

  installPhase = ''
  mkdir -p $out/bin
  strip ${name}
  cp fls-shake $out/bin/${name}
  '';
}
