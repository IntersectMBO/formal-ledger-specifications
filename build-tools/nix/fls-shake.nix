let
  fls-shake =
    {
      mkDerivation,
      base,
      binary,
      bytestring,
      deepseq,
      directory,
      fsnotify,
      hashable,
      lib,
      shake,
      split,
      text,
      fls-agda,
      python3,
      hpack,
      makeWrapper,
    }:
    mkDerivation {
      pname = "fls-shake";
      version = "0.0.0.1";
      src = ../shake;
      isLibrary = false;
      isExecutable = true;
      executableHaskellDepends = [
        base
        binary
        bytestring
        deepseq
        directory
        fsnotify
        hashable
        shake
        split
        text
        fls-agda
        python3
        hpack
      ];
      executableToolDepends = [
        makeWrapper
      ];
      license = "unknown";
      mainProgram = "fls-shake";
      postFixup = ''
        wrapProgram $out/bin/fls-shake \
          --prefix PATH : ${
            lib.makeBinPath [
              fls-agda
              python3
              hpack
            ]
          }
      '';
    };
in
{
  perSystem =
    { pkgs, self', ... }:
    let
      hpkg = pkgs.haskellPackages.callPackage fls-shake { fls-agda = self'.packages.fls-agda; };
    in
    {
      packages.fls-shake = hpkg;
      devShells.fls-shake = pkgs.haskellPackages.shellFor {
        packages = _: [ hpkg ];
        buildInputs = with pkgs; [
          cabal-install
          haskell-language-server
        ];
      };
    };
}
