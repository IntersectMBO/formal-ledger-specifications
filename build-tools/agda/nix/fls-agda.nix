{
  sources ? import ../../nix/sources.nix,
  nixpkgs ? import sources.nixpkgs { },
}:
let
  fls-agda-override = oldAttrs: {
    doCheck = false;  # explicitly disable test phase to prevent circular dependency
    outputs = [ "bin" ] ++ (oldAttrs.outputs or [ ]);
    postInstall =
      (oldAttrs.postInstall or "")
      + ''
        mkdir -p $bin/bin
        mv $out/bin/fls-agda $bin/bin/agda
      '';
  };
in
(nixpkgs.haskellPackages.callCabal2nix "fls-agda" ../. { }).overrideAttrs fls-agda-override
