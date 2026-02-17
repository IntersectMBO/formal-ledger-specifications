let
  fls-agda =
    {
      mkDerivation,
      Agda,
      base,
      blaze-html,
      containers,
      deepseq,
      directory,
      filepath,
      mtl,
      split,
      text,
      transformers,
      uri-encode,
    }:
    mkDerivation {
      pname = "fls-agda";
      version = "2.8.0";
      src = ../agda;
      isLibrary = false;
      isExecutable = true;
      enableSeparateDataOutput = true;
      executableHaskellDepends = [
        Agda
        base
        blaze-html
        containers
        deepseq
        directory
        filepath
        mtl
        split
        text
        transformers
        uri-encode
      ];
      description = "Custom backend for formal-ledger-specifications";
      license = "unknown";
      mainProgram = "agda";
    };
in
{
  perSystem =
    { pkgs, ... }:
    let
      hpkg = pkgs.haskellPackages.callPackage fls-agda { };
    in
    {
      packages.fls-agda = hpkg;
      devShells.fls-agda = pkgs.haskellPackages.shellFor {
        packages = _: [ hpkg ];
        buildInputs = with pkgs; [
          cabal-install
          haskell-language-server
        ];
      };
    };
}
