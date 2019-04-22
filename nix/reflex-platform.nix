{ bootstrap ? import <nixpkgs> {} }:
let
  reflex-platform = bootstrap.fetchFromGitHub {
    owner = "reflex-frp";
    repo  = "reflex-platform";
    rev = "a15d3a2411e7ca7d4ee4853b57c72fe83faee272";
    sha256 = "1dsvw0lah7761vndip1hqal4fjpjv84ravinnfhy83jgfav5ivna";
  };
in 
  import reflex-platform {}