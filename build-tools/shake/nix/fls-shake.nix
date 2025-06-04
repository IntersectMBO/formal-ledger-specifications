{ sources ? import ../../nix/sources.nix
, nixpkgs ? import sources.nixpkgs { }
}:
{
  fls-shake = nixpkgs.haskellPackages.callCabal2nix "fls-shake" ./.. { };
}
