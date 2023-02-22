{flake, ...}: {
  services = {
    flameshot = {
      enable = false;
      # settings = {
      #   General = {
      #     savePath = "/home/${flake.config.people.myself}/Pictures";
      #     saveAsFileExtension = ".png";
      #     uiColor = "#2d0096";
      #   };
      # };
    };
  };
}
