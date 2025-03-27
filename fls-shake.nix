### fls-shake.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.haskellPackages.callPackage (pkgs.runCommand "fls-shake" {
  pname = "fls-shake";
  version = "0.1.0.0";

  src = ./.;

  isLibrary = false;
  isExecutable = true;

  executableHsModules = [ "Shakefile.hs" ];
  mainModule = "Shakefile.hs";

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

