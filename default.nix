{ nixpkgs ? import <nixpkgs> {
    config = {
      packageOverrides = ps: rec {
        hsPkgs = ps.haskell.packages."${compiler}".override {
          overrides = hself: hsuper: with ps.haskell.lib; rec {
            byteslice = hself.callPackage ./.nix/byteslice.nix {};
            posix-api = hself.callPackage ./.nix/posix-api.nix {};
            primitive-unlifted = hself.callPackage ./.nix/primitive-unlifted.nix {};
            network = hsuper.network_3_0_1_1;
            quickcheck-classes = hsuper.quickcheck-classes_0_6_4_0;
            run-st = hself.callPackage ./.nix/run-st.nix {};
            semirings = hsuper.semirings_0_5_2;
            systemd = hsuper.systemd_2_2_0;
          };
        };
      };
    };
  }
, compiler ? "ghc881"
, doBenchmark ? false
}:

with { inherit (nixpkgs) pkgs hsPkgs; };

let
  hsLib = pkgs.haskell.lib;

  baseLib = hsPkgs.callCabal2nix "emmy" ./. {};

  lib = hsLib.overrideCabal baseLib (old: {
  });

in rec {
  inherit lib nixpkgs pkgs hsPkgs;
}
