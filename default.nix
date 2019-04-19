{ reflex-platform ? import ./reflex-platform {} }:

reflex-platform.project ({ pkgs, ... }: {
  withHoogle = false;
  useWarp = true;

  packages = {
    common = ./common;
    frontend = ./frontend;
  };

  shells = {
    ghc = ["common" "frontend"];
    ghcjs = ["common" "frontend"];
  };

  shellToolOverrides = ghc: super: {
    cabal-install = pkgs.haskellPackages.cabal-install;
    hlint = pkgs.haskellPackages.hlint;
  };

  overrides = self: super: {
    # http-media = pkgs.haskell.lib.dontCheck super.http-media;
    jsaddle-wkwebview = pkgs.haskell.lib.dontCheck super.jsaddle-wkwebview;
  };
})
