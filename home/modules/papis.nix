{config, ...}: {
  programs = {
    papis = {
      enable = true;
      libraries = {
        bryn = {
          isDefault = true;
          name = "bryn";
          settings = {
            dir = "${config.xdg.userDirs.documents}/papis";
          };
        };
      };
      settings = {
        editor = "hx";
        file-browser = "nnn";
        add-edit = true;
      };
    };
  };
}
