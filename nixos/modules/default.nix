_: let
  autorandr = import ./autorandr.nix;
  boot = import ./boot.nix;
  bluetooth = import ./bluetooth.nix;
  environment = import ./environment.nix;
  fonts = import ./fonts.nix;
  intel = import ./intel.nix;
  locale = import ./locale.nix;
  nil = import ./nil.nix;
  nix = import ./nix.nix;
  networking = import ./networking.nix;
  nvidia = import ./nvidia.nix;
  plasma = import ./plasma.nix;
  printing = import ./printing.nix;
  sound = import ./sound.nix;
  system = import ./system.nix;
  touchpad = import ./touchpad.nix;
  user = import ./user.nix;
  xserver = import ./xserver.nix;
in {
  flake = {
    nixosModules = {
      inherit
        autorandr
        boot
        bluetooth
        environment
        fonts
        intel
        locale
        nil
        nix
        networking
        nvidia
        plasma
        printing
        sound
        system
        touchpad
        user
        xserver
        ;
      base = {imports = [boot environment user nil nix system networking locale];};
      desktop = {imports = [autorandr xserver plasma sound printing bluetooth fonts touchpad];};
    };
  };
}
