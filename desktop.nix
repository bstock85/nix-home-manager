{ config, pkgs, ... }:

{
# brave, bitwarden, grayjay, jellyfin client, thunderbird,spotify,discord, openoffice?, steam?, epic?
  
  programs.brave = {
    enable = true;
    extensions = [
      { id = "nngceckbapebfimnlniiiahkandclblb"; } # bitwarden
      { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; } # sponsorblock
      # { id = ""; } 
    ];
  };
  # programs.chromium = {
  #   enable = true;
  #   package = pkgs.brave;
  #   extensions = [
  #     { id = "nngceckbapebfimnlniiiahkandclblb"; } # bitwarden
  #   ];
  # };

  home.packages = [
    # pkgs.bitwarden-desktop
    pkgs.grayjay
    # pkgs.jellyfin-media-player
    # pkgs.jellyfin-web
    pkgs.spotify
    pkgs.discord
    pkgs.thunderbird
  ];
}
