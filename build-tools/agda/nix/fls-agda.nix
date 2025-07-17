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
        remove-references-to -t ${nixpkgs.haskellPackages.Agda}         $out/bin/agda
        mkdir -p $bin/bin
        cp $out/bin/fls-agda $bin/bin/agda
      '';
  };
in
(nixpkgs.haskellPackages.callCabal2nix "fls-agda" ../. { }).overrideAttrs fls-agda-override
# remove-references-to -t ${nixpkgs.haskellPackages.deepseq}      $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.blaze-html}   $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.containers}   $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.uri-encode}   $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.text}         $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.filepath}     $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.split}        $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.transformers} $out/bin/agda
# remove-references-to -t ${nixpkgs.haskellPackages.mtl}          $out/bin/agda
