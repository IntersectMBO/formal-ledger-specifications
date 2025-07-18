{
  sources ? import ../../nix/sources.nix,
  nixpkgs ? import sources.nixpkgs { },
}:
let
  fls-agda-override = oldAttrs: {
    nativeBuildInputs = [ nixpkgs.removeReferencesTo ] ++ (oldAttrs.nativeBuildInputs or [ ]);
    outputs = [ "bin" ] ++ (oldAttrs.outputs or [ ]);
    postInstall =
      (oldAttrs.postInstall or "")
      + ''
        mkdir -p "$bin/bin"
        cp $out/bin/fls-agda $bin/bin/agda
        remove-references-to -t ${nixpkgs.haskellPackages.Agda}         "$bin/bin/fls-agda"
        remove-references-to -t ${nixpkgs.haskellPackages.blaze-html}   "$bin/bin/fls-agda"
        remove-references-to -t ${nixpkgs.haskellPackages.uri-encode}   "$bin/bin/fls-agda"
      '';
  };
in
(nixpkgs.haskellPackages.callCabal2nix "fls-agda" ../. { }).overrideAttrs fls-agda-override
