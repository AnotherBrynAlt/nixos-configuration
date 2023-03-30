{pkgs, ...}: {
  services.xserver = {
    displayManager = {
      sddm = {
        enable = true;
        enableHidpi = true;
        settings = {
          Autologin = {
            Session = "plasma.desktop";
            User = "bryn";
          };
        };
      };
      sessionPackages = [
        (pkgs.plasma-workspace.overrideAttrs
          (old: {passthru.providedSessions = ["plasmawayland" "plasma"];}))
      ];
    };
    desktopManager = {
      plasma5 = {
        enable = true;
      };
    };
  };

  programs = {
    kdeconnect.enable = true;
    dconf.enable = true;
  };
}
