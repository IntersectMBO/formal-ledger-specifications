{ sources ? import ../nix/sources.nix
, nixpkgs ? import sources.nixpkgs { }
}:
with nixpkgs;
let
  fls-agda = lib.makeScope newScope (
    self:
    callPackage (import ./nix/lib.nix) {
      agda = (import ./nix/fls-agda.nix { inherit nixpkgs; }).fls-agda;
      inherit self;
      inherit (haskellPackages) ghcWithPackages;
    }
  );
in
  {
    inherit (fls-agda) withPackages agda;
  }
