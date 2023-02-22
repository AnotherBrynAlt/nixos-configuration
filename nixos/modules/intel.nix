{
  config,
  lib,
  pkgs,
  ...
}: {
  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = builtins.attrValues {inherit (pkgs) vaapiIntel intel-media-driver;};
    };
  };

  environment.variables = {
    VDPAU_DRIVER = lib.mkIf config.hardware.opengl.enable (lib.mkDefault "va_gl");
    LIBVA_DRIVER_NAME = lib.mkIf config.hardware.opengl.enable (lib.mkDefault "iHD");
  };

  boot.initrd.kernelModules = ["i915"];

  services = {
    xserver = {
      enable = true;
      videoDrivers = ["intel"];
    };
  };
}
