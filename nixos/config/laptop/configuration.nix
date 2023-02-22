{pkgs, ...}: {
  # Configuration for an Acer Spin 713
  imports = [./hardware-configuration.nix];

  networking.hostName = "laptop";

  # Enables sound via SOF
  hardware.enableAllFirmware = true;

  # Default to S0 sleep so laptop actually sleeps
  boot.kernelParams = [
    "mem_sleep_default=deep"
  ];

  # Enable DConf for permanence
  programs.dconf.enable = true;

  # HiDPI Options
  hardware.video.hidpi.enable = true;
  services.xserver = {
    dpi = 153;
    displayManager.sessionCommands = ''
      ${pkgs.xorg.xrdb}/bin/xrdb -merge <<EOF
        Xft.dpi: 153
        Xcursor.size: 32
      EOF
    '';
  };
  environment.variables = {
    GDK_SCALE = "2";
    GDK_DPI_SCALE = "0.5";
    _JAVA_OPTIONS = "-Dsun.java2d.uiScale=2";
  };
}
