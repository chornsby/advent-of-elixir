{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    elixir_1_15
    (livebook.override {elixir = elixir_1_15;})
  ];
}
