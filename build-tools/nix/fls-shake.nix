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
    let
      binDeps = [
        fls-agda
        hpack
        (python3.withPackages (
          ps: with ps; [
            mkdocs
            mkdocs-material
            pymdown-extensions
            pyyaml
            pybtex
          ]
        ))
      ];
    in
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
      ];
      executableSystemDepends = binDeps;
      executableToolDepends = [
        makeWrapper
      ];
      license = "unknown";
      mainProgram = "fls-shake";
      postFixup = ''
        wrapProgram $out/bin/fls-shake \
          --prefix PATH : ${lib.makeBinPath binDeps}
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
