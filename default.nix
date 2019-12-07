{ sources ? import ./nix/sources.nix, compiler ? "ghc865" }:
let
  pkgs = import sources.nixpkgs { };
in pkgs.haskell.packages.${compiler}.callPackage ./log-parser.nix { }
