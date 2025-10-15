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
  src = ../.;
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
}
