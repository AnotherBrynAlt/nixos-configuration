{pkgs, ...}: {
  services.xserver.libinput = {
    enable = true;
    mouse.naturalScrolling = true;
    touchpad.naturalScrolling = true;
    touchpad.tapping = true;
  };
  environment.systemPackages = [
    pkgs.libinput
  ];
}
