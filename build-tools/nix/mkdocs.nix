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
  pname = "mkdocs";
  src = lib.fileset.toSource {
    root = ../../.;
    fileset = lib.fileset.unions [
      ../../README.md
      ../static/md/mkdocs
      ../static/latex
      ../../src
      ../../formal-ledger.agda-lib
      ../../src-lib-exts
    ];
  };
  buildPhase = ''
    runHook preBuild

    fls-shake --trace mkdocs

    runHook postBuild
  '';
  installPhase = ''
    runHook preInstall

    mkdir "$out"
    cp -r dist/mkdocs "$out"

    runHook postInstall
  '';
}
