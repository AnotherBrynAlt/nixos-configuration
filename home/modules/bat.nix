{pkgs, ...}: {
  programs = {
    bat = {
      enable = true;
      config = {
        style = "header";
        theme = "TwoDark";
      };
      extraPackages = builtins.attrValues {
        inherit (pkgs.bat-extras) batdiff batman batgrep batwatch;
      };
    };
  };
}
