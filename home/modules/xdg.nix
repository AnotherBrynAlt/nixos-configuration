{config, ...}: {
  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
      extraConfig = {
        XDG_DEV_DIR = "${config.home.homeDirectory}/Developer";
        XDG_SOURCE_DIR = "${config.home.homeDirectory}/Source";
        XDG_PROJECTS_DIR = "${config.home.homeDirectory}/Projects";
        XDG_WORKSPACES_DIR = "${config.home.homeDirectory}/Workspaces";
      };
    };
  };
}
