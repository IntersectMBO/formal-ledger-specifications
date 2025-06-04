{ sources ? import ../../nix/sources.nix
, nixpkgs ? import sources.nixpkgs { }
}:
{
  fls-agda = nixpkgs.haskellPackages.callCabal2nix "fls-agda" ../. { };
}
