{
  sources ? import ../../nix/sources.nix,
  nixpkgs ? import sources.nixpkgs { },
}:
nixpkgs.haskellPackages.callCabal2nix "fls-shake" ./.. { }
