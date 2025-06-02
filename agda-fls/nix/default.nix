{
  pkgs ? import <nixpkgs> { },
  ...
}:
let
  agda-fls = pkgs.lib.makeScope pkgs.newScope (
    self:
    pkgs.callPackage (import ./agda-fls.nix) {
      agda-fls = pkgs.haskellPackages.callCabal2nix "agda-fls" ../. { };
      inherit self;
      inherit (pkgs.haskellPackages) ghcWithPackages;
    }
  );
in
{
  inherit (agda-fls) agda-fls withPackages;
}
