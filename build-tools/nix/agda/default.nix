{ nixpkgs, lib, newScope, Agda }:
lib.makeScope newScope (self:
  let
    inherit (nixpkgs.callPackage ../build-support/agda {
      inherit (nixpkgs.haskellPackages) ghcWithPackages;
      inherit Agda;
    })
    withPackages
    mkDerivation
    ;
  in
    {
      inherit mkDerivation withPackages;
      agda = withPackages [];
    }
)
