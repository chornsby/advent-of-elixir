{pkgs ? import <nixpkgs> {}}: let
  elixir = pkgs.elixir_1_17.override {
    erlang = erlang;
  };
  erlang = pkgs.erlang_27;
  livebook = pkgs.livebook.override {
    elixir = elixir;
    erlang = erlang;
  };
in
  pkgs.mkShell {
    packages = [
      elixir
      livebook
    ];

    shellHook = ''
      export LIVEBOOK_HOME="$(pwd)"
    '';
  }
