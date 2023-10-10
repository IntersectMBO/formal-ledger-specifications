{
  outputs = _: let
    systems = [ "x86_64-linux" ];

    genAttrs = names: f: builtins.listToAttrs (map (name: {
      inherit name;
      value = f name;
    }) names);
  in {
    hydraJobs = genAttrs systems (system: import ./. rec {
      sources = import nix/sources.nix;
      pkgs = import sources.nixpkgs { inherit system; };
    });
  };
}
