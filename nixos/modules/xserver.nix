{pkgs, ...}: {
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "dvp";
  };
}
