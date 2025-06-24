{ config, pkgs, ... }:

{
# trash-cli, cp -i, mkdir -p, mv -i, VISUAL=code?, ll=ls -Fls,starship gruvbox rainbow preset
  programs = {
    bash = {
      enable = true;
    };
    fastfetch = {
      enable = true;
    };
    nushell = {
      enable = true;
      environmentVariables = {
        EDITOR = "hx";
      };
      settings = {
        show_banner = false;
        completions.external.enable = true;
      };
      extraConfig = "fastfetch";
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
    lazygit = {
      enable = true;
    };
    lazydocker = {
      enable = true;
    };
  };
  home.packages = [
    pkgs.dua
    pkgs.tldr
    pkgs.trash-cli    
  ];
}
