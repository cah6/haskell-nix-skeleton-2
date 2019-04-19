{ reflex-platform ? import ./reflex-platform {}
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
  };

})
