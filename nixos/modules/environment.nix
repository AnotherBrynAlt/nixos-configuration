{pkgs, ...}: {
  environment = {
    variables = {
      TERMINAL = "wezterm";
      EDITOR = "hx";
      VISUAL = "hx";
      MOZ_USE_XINPUT2 = "1";
      MOZ_ENABLE_WAYLAND = "1";
    };
    systemPackages = builtins.attrValues {
      inherit
        (pkgs)
        curl
        git
        killall
        nano
        pciutils
        ripgrep
        usbutils
        wget
        ;
    };
  };
}
