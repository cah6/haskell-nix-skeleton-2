{ reflex-platform ? import ./reflex-platform {} }:

reflex-platform.project ({ pkgs, ... }: {
  packages = {
    common = ./common;
    frontend = ./frontend;
  };

  shells = {
    ghc = ["common" "frontend"];
    ghcjs = ["common" "frontend"];
  };
})
