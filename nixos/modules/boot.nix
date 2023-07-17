{pkgs, ...}: {
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        editor = true;
        configurationLimit = 24;
        consoleMode = "auto";
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      timeout = 10;
    };
    kernelPackages = pkgs.linuxPackages_zen;

    kernel.sysctl = {
      "fs.inotify.max_user_watches" = "524288";
    };
  };

  # Speed up boot
  # https://discourse.nixos.org/t/boot-faster-by-disabling-udev-settle-and-nm-wait-online/6339
  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}
