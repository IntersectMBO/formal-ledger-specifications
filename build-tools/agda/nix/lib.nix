# see https://github.com/NixOS/nixpkgs/blob/nixos-25.05/pkgs/build-support/agda/default.nix
{stdenv, lib, self, agda, runCommandNoCC, makeWrapper, writeText, mkShell, ghcWithPackages}:
with lib.strings;
let
  mkLibraryFile =
    pkgs:
    let
      pkgs' = if isList pkgs then pkgs else pkgs self;
    in
    writeText "libraries" ''
      ${(concatMapStringsSep "\n" (p: "${p}/${p.libraryFile}") pkgs')}
    '';

  withPackages' = {
      pkgs,
      ghc ? ghcWithPackages (p: with p; [ ieee754 ])
  }: let
    library-file = mkLibraryFile pkgs;
    pname = "${agda.pname}WithPackages";
    version = agda.version;
  in runCommandNoCC "${pname}-${version}" {
    inherit pname version;
    nativeBuildInputs = [ makeWrapper ];
    passthru.unwrapped = agda;
  } ''
    mkdir -p $out/bin
    makeWrapper ${agda}/bin/fls-agda $out/bin/agda \
      --add-flags "--with-compiler=${ghc}/bin/ghc" \
      --add-flags "--library-file=${library-file}" \
      --add-flags "--local-interfaces"
    ''; # Local interfaces has been added for now: See https://github.com/agda/agda/issues/4526
  withPackages = arg: if builtins.isAttrs arg then withPackages' arg else withPackages' { pkgs = arg; };
in
  {
    inherit withPackages;
    agda = withPackages [];
  }
