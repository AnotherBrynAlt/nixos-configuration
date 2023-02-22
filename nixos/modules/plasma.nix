{pkgs, ...}: {
  services.xserver = {
    displayManager = {
      sddm = {
        enable = true;
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
}
