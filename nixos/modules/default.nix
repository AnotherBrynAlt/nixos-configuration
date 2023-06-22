_: let
  autorandr = import ./autorandr.nix;
  atop = import ./atop.nix;
  boot = import ./boot.nix;
  bluetooth = import ./bluetooth.nix;
  environment = import ./environment.nix;
  flatpak = import ./flatpak.nix;
  fonts = import ./fonts.nix;
  intel-hd = import ./intel-hd.nix;
  locale = import ./locale.nix;
  nil = import ./nil.nix;
  nix = import ./nix.nix;
  networking = import ./networking.nix;
  nvidia = import ./nvidia.nix;
  plasma = import ./plasma.nix;
  printing = import ./printing.nix;
  security = import ./security.nix;
  services = import ./services.nix;
  sound = import ./sound.nix;
  system = import ./system.nix;
  touchpad = import ./touchpad.nix;
  user = import ./user.nix;
  virtualization = import ./virtualization.nix;
  xserver = import ./xserver.nix;
in {
  flake = {
    nixosModules = {
      inherit
        autorandr
        atop
        boot
        bluetooth
        environment
        fonts
        intel-hd
        locale
        nil
        nix
        networking
        nvidia
        plasma
        printing
        security
        sound
        system
        touchpad
        user
        virtualization
        xserver
        ;
      base = {imports = [boot environment user nil nix services system networking locale security virtualization];};
      desktop = {imports = [autorandr atop flatpak xserver plasma sound printing bluetooth fonts touchpad];};
    };
  };
}
