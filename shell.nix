{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    elixir_1_16
    (livebook.override {elixir = elixir_1_16;})
  ];

  shellHook = ''
    export LIVEBOOK_HOME="$(pwd)"
  '';
}
