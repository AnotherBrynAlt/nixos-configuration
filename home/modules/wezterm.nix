_: {
  programs = {
    wezterm = {
      enable = true;
      extraConfig = ''
        local wezterm = require 'wezterm'
        return {
          enable_wayland = true,
          hide_tab_bar_if_only_one_tab = true,
          color_scheme = "Dark Pastel",
          window_background_opacity = 0.75,
          font = wezterm.font_with_fallback {
            'JetBrains Mono',
            'MesloLGS NF',
            'MesloLGS Nerd Font Mono',
            'Fira Code',
            'PowerlineExtraSymbols',
            'Noto Color Emoji',
          },
          warn_about_missing_glyphs = false,
          allow_square_glyphs_to_overflow_width = 'WhenFollowedBySpace',
          font_size = 16.0,
          default_cursor_style = 'BlinkingBar',
        }
      '';
    };
  };
}
