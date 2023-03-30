_: {
  programs = {
    firefox = {
      enable = true;
      # profiles = {
      #   bryn = {
      #     id = 0;
      #     settings = {
      #       "media.ffmpeg.vaapi.enabled" = true;
      #       "media.ffvpx.enabled" = false;
      #       "media.av1.enabled" = false;
      #       "gfx.webrender.all" = true;
      #     };
      #   };
      # };
    };
  };
  home.sessionVariables = {
    MOZ_USE_XINPUT2 = "1";
    MOZ_ENABLE_WAYLAND = "1";
  };
}
