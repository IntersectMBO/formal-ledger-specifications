{
  lib,
  mkDerivation,
  standard-library,
  standard-library-classes,
  standard-library-meta,
  abstract-set-theory,
  iog-prelude,
}:
mkDerivation {
  pname = "formal-ledger";
  version = "0.1";
  src = lib.fileset.toSource {
    root = ../../.;
    fileset = lib.fileset.unions [
      ../scripts/checkTypeChecked.sh
      ../../src
      ../../formal-ledger.agda-lib
      ../../src-lib-exts
    ];
  };
  meta = { };
  buildInputs = [
    standard-library
    standard-library-classes
    standard-library-meta
    abstract-set-theory
    iog-prelude
  ];
  buildPhase = ''
    agda --profile=modules src/Ledger.lagda.md | tee typecheck.log
  '';
  doCheck = true;
  checkPhase = ''
    sh build-tools/scripts/checkTypeChecked.sh
  '';
  installPhase = ''
    mkdir "$out"
    awk '/^Total/{p=1}p' typecheck.log > "$out/typecheck.time"
    cp -r _build "$out"
  '';
}
