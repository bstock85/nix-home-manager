{ config, pkgs, ... }:

{
# git, cursor, vscode-server, docker?, lsps, bun, python?, pixi?
  programs = {
    git = {
      enable = true;
      userEmail = "stock8585@gmail.com";
      userName = "Blake Stock";
    };
    gh = {
      enable = true;
    };
    # code-cursor = {
      # enable = true;
    # };
    vscode = {
      enable = true;
    };
    bun = {
      enable = true;
    };
  };
  home.packages = [
    # pkgs.code-cursor
    pkgs.pixi
    pkgs.ruff
    pkgs.bash-language-server
    pkgs.yaml-language-server
  ];

}
