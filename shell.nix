{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    elixir_1_15
    (elixir-ls.override {elixir = elixir_1_15;})
    (livebook.override {elixir = elixir_1_15;})
  ];

  shellHook = ''
    export LIVEBOOK_HOME="$(pwd)"
  '';
}
