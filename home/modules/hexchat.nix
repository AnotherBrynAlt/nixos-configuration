{pkgs, ...}: {
  programs = {
    hexchat = {
      enable = true;
      # theme = {
      #   source = pkgs.fetchzip {
      #     url = "https://dl.hexchat.net/themes/Monokai.hct#Monokai.zip";
      #     sha256 = "sha256-WCdgEr8PwKSZvBMs0fN7E2gOjNM0c2DscZGSKSmdID0=";
      #     stripRoot = false;
      #   };
      # };
    };
  };
}
