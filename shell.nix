{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    (livebook.override {elixir = elixir_1_15;})
  ];
}
