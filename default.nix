{ reflex-platform ? import ./nix/reflex-platform.nix {}
, withHoogle ? false
}:
reflex-platform.project ({ pkgs, ... }: {

  inherit withHoogle;
  useWarp = true;

  packages = {
    common = ./common;
    frontend = ./frontend;
  };

  shells = {
    ghc = ["common" "frontend"];
    ghcjs = ["common" "frontend"];
  };

  shellToolOverrides = self: super: {
  };

  overrides = self: super: {
    http-media = pkgs.haskell.lib.dontCheck super.http-media;
    servant-reflex = pkgs.haskellPackages.callPackage ./nix/servant-reflex.nix { };
    lens-aeson = pkgs.haskell.lib.dontCheck super.lens-aeson;
  };

})
