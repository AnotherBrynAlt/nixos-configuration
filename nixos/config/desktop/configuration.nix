{pkgs, ...}: {
  # Configuration for an Intel Desktop
  imports = [./hardware-configuration.nix];

  networking.hostName = "desktop";

  # Enables all firmwares
  hardware.enableAllFirmware = true;

  # Enable DConf for permanence
  programs.dconf.enable = true;
}
