
{ bootstrap ? import <nixpkgs> {} }:
bootstrap.fetchFromGitHub {
  owner = "imalsogreg";
  repo  = "servant-reflex";
  rev = "44595630e2d1597911ecb204e792d17db7e4a4ee";
  sha256 = "009d8vr6mxfm9czywhb8haq8pwvnl9ha2cdmaagk1hp6q4yhfq1n";
}