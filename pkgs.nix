let
  rev = "aeacf73c959e4d418da9abbd7674ee45c875b52d"; # release-25.11, Mar 15, 2026
  sha256 = "0a6s7cijqx8wr5y63nyyvgnp7l805xxnzc2l58icqxckz0k2qg0v";
in
import (
  builtins.fetchTarball {
    inherit sha256;
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
  }
)
