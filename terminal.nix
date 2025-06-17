{ config, pkgs, ... }:

{
# nushell, starship, yazi, zoxide, zellij, helix, atuin, lazygit, lazydocker, neofetch?
  programs = {
    bash = {
      enable = true;
    };
    nushell = {
      enable = true;
      environmentVariables = {
        EDITOR = "hx";
      };
    };
    starship = {
      enable = true;      
    };
    yazi = {
      enable = true;
      shellWrapperName = "y";
      enableNushellIntegration = true;
    };
    atuin = {
      enable = true;
      enableNushellIntegration = true;
    };
    zellij = {
      enable = true;
      enableBashIntegration = true;
      settings = {
        default_shell = "nu";
      };
      attachExistingSession = true;
    };
    zoxide = {
      enable = true;
      enableNushellIntegration = true;
    };
    helix = {
      enable = true;
      defaultEditor = true;
      # set theme
    };
    bat = {
      enable = true;
    };
    btop = {
      enable = true;
    };
  };
  home.packages = [
    pkgs.dua
  ];

}
