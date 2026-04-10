{
  name,
  lib,
  mkDerivation,
  standard-library,
  standard-library-classes,
  standard-library-meta,
  abstract-set-theory,
  iog-prelude,
  formal-ledger,
}:
mkDerivation {
  pname = "formal-ledger-${name}";
  version = "0.1";
  src = lib.fileset.toSource {
    root = ../../formal-ledger-${name};
    fileset = lib.fileset.unions [
      ../../formal-ledger-${name}
    ];
  };
  meta = { };
  buildInputs = [
    standard-library
    standard-library-classes
    standard-library-meta
    abstract-set-theory
    iog-prelude
    formal-ledger
  ];
  buildPhase = ''
    agda --build-library
  '';
  installPhase = ''
    mkdir "$out"
    cp -r _build "$out"
  '';
}
