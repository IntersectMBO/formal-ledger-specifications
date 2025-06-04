{ sources ? import ../nix/sources.nix
, nixpkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:
let
  # see https://github.com/NixOS/nixpkgs/blob/nixos-25.05/pkgs/build-support/agda/default.nix
  AgdaPkg = {stdenv, lib, self, fls-agda, runCommandNoCC, makeWrapper, writeText, mkShell, ghcWithPackages}:
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
        pname = "fls-agdaWithPackages";
        version = fls-agda.version;
      in runCommandNoCC "${pname}-${version}" {
        inherit pname version;
        nativeBuildInputs = [ makeWrapper ];
        passthru.unwrapped = fls-agda;
      } ''
        mkdir -p $out/bin
        makeWrapper ${fls-agda}/bin/fls-agda $out/bin/agda \
          --add-flags "--with-compiler=${ghc}/bin/ghc" \
          --add-flags "--library-file=${library-file}" \
          --add-flags "--local-interfaces"
        ''; # Local interfaces has been added for now: See https://github.com/agda/agda/issues/4526
      withPackages = arg: if builtins.isAttrs arg then withPackages' arg else withPackages' { pkgs = arg; };
    in {
      inherit withPackages;
      fls-agda = withPackages [];
    };

  fls-agda = nixpkgs.lib.makeScope nixpkgs.newScope (
    self:
    nixpkgs.callPackage AgdaPkg {
      fls-agda = nixpkgs.haskellPackages.callCabal2nix "fls-agda" ./. { };
      inherit self;
      inherit (nixpkgs.haskellPackages) ghcWithPackages;
    }
  );
in
{
  inherit (fls-agda) fls-agda withPackages;
}
