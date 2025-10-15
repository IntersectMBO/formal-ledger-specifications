{
  lib,
  mkDerivation,
}:
mkDerivation {
  pname = "hs-src";
  src = lib.fileset.toSource {
    root = ../../.;
    fileset = lib.fileset.unions [
      ../../src
      ../../formal-ledger.agda-lib
      ../../src-lib-exts
      ../static/hs-src
    ];
  };
  buildPhase = ''
    fls-shake --trace hs
  '';
  installPhase = ''
    mkdir "$out"
    cp -r dist/hs "$out"
  '';
  doInstallCheck = true;
  installCheckPhase = ''
    test -f "$out/hs/cardano-ledger-executable-spec.cabal"
  '';
}
