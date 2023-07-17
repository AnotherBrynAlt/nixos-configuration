{flake, ...}: {
  services = {
    flameshot = {
      enable = true;
      settings = {
        General = {
          savePath = "/home/${flake.config.people.myself}/Pictures";
          saveAsFileExtension = ".png";
          uiColor = "#2d0096";
          checkForUpdates = false;
        };
      };
    };
  };
}
