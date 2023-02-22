_: {
  programs = {
    hyfetch = {
      enable = true;
      settings = {
        backend = "neofetch";
        preset = "nonbinary";
        mode = "rgb";
        light_dark = "dark";
        lightness = 0.65;
        color_align = {
          mode = "horizontal";
        };
      };
    };
  };
}
