### fls-shake.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.haskellPackages.buildHaskellPackage {
  pname = "fls-shake";
  version = "0.1.0.0";

  src = ./.;

  isLibrary = false;
  isExecutable = true;

  executableHsModules = [ "Shakefile.hs" ];
  mainModule = "Shakefile.hs";

  buildDepends = with pkgs.haskellPackages; [
    base
    shake
    hashable
    binary
    deepseq
  ];

  enableThreadedRuntime = true;
  executableName = "fls-shake";

  preConfigure = ''
    echo "name: fls-shake" > fls-shake.cabal
    echo "version: 0.1.0.0" >> fls-shake.cabal
    echo "build-type: Simple" >> fls-shake.cabal
    echo "cabal-version: >=1.10" >> fls-shake.cabal
    echo "" >> fls-shake.cabal
    echo "executable fls-shake" >> fls-shake.cabal
    echo "  main-is: Shakefile.hs" >> fls-shake.cabal
    echo "  build-depends: base, shake, hashable, binary, deepseq" >> fls-shake.cabal
    echo "  default-language: Haskell2010" >> fls-shake.cabal
  '';
}
