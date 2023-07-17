{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = builtins.attrValues {
    inherit (pkgs) nvtop ddcutil;
    inherit (pkgs.linuxPackages) nvidia_x11;
    inherit (pkgs.cudaPackages) cudatoolkit cudnn cutensor; # tensorrt;
  };

  hardware = {
    opengl = {
      enable = true;
      extraPackages = builtins.attrValues {inherit (pkgs) nvidia-vaapi-driver vaapiVdpau;};
      extraPackages32 = builtins.attrValues {inherit (pkgs.pkgsi686Linux) nvidia-vaapi-driver vaapiVdpau;};
      driSupport = true;
      driSupport32Bit = true;
    };
    nvidia = {
      forceFullCompositionPipeline = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.production;
      powerManagement.enable = true;
    };
  };

  programs.atop = {
    atopgpu.enable = true;
  };

  services = {
    xserver = {
      enable = true;
      videoDrivers = ["nvidia"];
    };
  };

  virtualisation.docker.enableNvidia = lib.mkIf config.virtualisation.docker.enable true;
  virtualisation.podman.enableNvidia = lib.mkIf config.virtualisation.docker.enable true;
}
