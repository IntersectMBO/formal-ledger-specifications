{ sources ? import ../nix/sources.nix
, nixpkgs ? import sources.nixpkgs { }
}:
with nixpkgs;
let
  fls-agda = callPackage ../nix/build-support/agda {
    inherit (haskellPackages) ghcWithPackages;
    Agda = import ./nix/fls-agda.nix { inherit nixpkgs; };
  };
in
  {
    inherit (fls-agda) withPackages;
    agda = fls-agda.withPackages [];
  }
