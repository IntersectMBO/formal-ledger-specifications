{
  lib,
  mkDerivation,
  dejavu_fonts,
  ghostscript,
  pandoc,
  python3,
  texlive,
}:
mkDerivation {
  pname = "mkdocs";
  src = lib.fileset.toSource {
    root = ../../.;
    fileset = lib.fileset.unions [
      ../../README.md
      ../../CONTRIBUTING.md
      ../scripts/md
      ../static/md
      ../static/latex
      ../../src
      ../../formal-ledger.agda-lib
      ../../src-lib-exts
    ];
  };
  meta = { };
  buildInputs = [
    pandoc
    (python3.withPackages (
      ps: with ps; [
        pip
        mkdocs
        mkdocs-material
        pymdown-extensions
        pyyaml
        pybtex
      ]
    ))
    (texlive.combine {
      inherit (texlive)
        bclogo
        scheme-small
        dejavu
        mdframed
        zref
        luatex
        luatex85
        dvisvgm
        needspace
        standalone
        tikz-cd
        pgfplots
        ;
    })
    dejavu_fonts
    ghostscript
  ];
  buildPhase = ''
    runHook preBuild
    mkdir -p dist
    python ./build-tools/scripts/md/build.py --run-agda
    (cd _build/md/mkdocs/; mkdocs build --site-dir ../../../dist/site)
    runHook postBuild
  '';
  installPhase = ''
    runHook preInstall
    mkdir -p "$out"
    cp -r "dist/site" "$out"
    runHook postInstall
  '';
}
