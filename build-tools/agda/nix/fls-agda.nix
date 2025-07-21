{
  sources ? import ../../nix/sources.nix,
  nixpkgs ? import sources.nixpkgs { },
}:
(nixpkgs.haskellPackages.callCabal2nix "fls-agda" ../. { }).overrideAttrs (oldAttrs: {
  postInstall = (oldAttrs.postInstall or "") + ''
    ln -sf $out/bin/fls-agda $out/bin/agda
  '';
})
