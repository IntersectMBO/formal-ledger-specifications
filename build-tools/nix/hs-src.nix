{
  lib,
  stdenv,
  glibcLocales,
  mkDerivation,
}:
mkDerivation {
  # Agda prints warnings with the names they concern; without a UTF-8 locale
  # a non-ASCII name makes it fail ("cannot encode character").
  LANG = "en_US.UTF-8";
  LC_ALL = "en_US.UTF-8";
  LOCALE_ARCHIVE = lib.optionalString stdenv.isLinux "${glibcLocales}/lib/locale/locale-archive";
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
