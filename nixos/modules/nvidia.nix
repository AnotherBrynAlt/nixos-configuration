{config, ...}: {
  hardware = {
    opengl = {
      enable = true;
      driSupport32Bit = true;
    };
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.production;
      powerManagement.enable = true;
    };
  };

  services = {
    xserver = {
      enable = true;
      videoDrivers = ["nvidia"];
    };
  };
}
