_: {
  services.smartd = {
    enable = true;
    autodetect = true;
  };

  services.udev.extraRules = ''
    SUBSYSTEM=="nvme", KERNEL=="nvme[0-9]*", GROUP="disk"
  '';
}
