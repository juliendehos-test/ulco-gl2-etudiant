{ pkgs ? import <nixpkgs> {} }:

with pkgs; 

python3Packages.buildPythonPackage {
  name = "tictactoe-gui";
  src = ./.;
  buildInputs = [
    gobject-introspection
    gtk3
    python3Packages.pygobject3
    python3Packages.pybind11
  ];
}
