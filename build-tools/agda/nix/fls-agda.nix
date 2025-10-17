{
  mkDerivation,
  Agda,
  base,
  blaze-html,
  containers,
  deepseq,
  directory,
  filepath,
  lib,
  mtl,
  split,
  text,
  transformers,
  uri-encode,
}:
mkDerivation {
  pname = "fls-agda";
  version = "2.8.0";
  src = ../.;
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = true;
  executableHaskellDepends = [
    Agda
    base
    blaze-html
    containers
    deepseq
    directory
    filepath
    mtl
    split
    text
    transformers
    uri-encode
  ];
  description = "Custom backend for formal-ledger-specifications";
  license = "unknown";
  mainProgram = "agda";
}
