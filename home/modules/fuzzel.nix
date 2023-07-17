{pkgs, ...}: {
  programs = {
    fuzzel = {
      enable = true;
      settings = {
        main = {
          terminal = "${pkgs.wezterm}/bin/wezterm";
          layer = "overlay";
        };
        colors.background = "00000000dd";
      };
    };
  };
}
