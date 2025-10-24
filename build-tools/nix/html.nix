{
  lib,
  stdenv,
  glibcLocales,
  mkDerivation,
}:
mkDerivation {
  LANG = "en_US.UTF-8";
  LC_ALL = "en_US.UTF-8";
  LOCALE_ARCHIVE = lib.optionalString stdenv.isLinux "${glibcLocales}/lib/locale/locale-archive";
  pname = "html";
  src = lib.fileset.toSource {
    root = ../../.;
    fileset = lib.fileset.unions [
      ../../src
      ../../formal-ledger.agda-lib
      ../../src-lib-exts
    ];
  };
  buildPhase = ''
    fls-shake --trace html
  '';
  installPhase = ''
    mkdir "$out"
    cp -r dist/html "$out"
  '';
  doInstallCheck = true;
  installCheckPhase = ''
    test -f "$out/html/index.html"
  '';
}
