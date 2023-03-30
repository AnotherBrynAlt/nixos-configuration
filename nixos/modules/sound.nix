{pkgs, ...}: {
  sound.enable = true;
  hardware.pulseaudio = {
    enable = false;
    extraModules = [pkgs.pulseaudio-modules-bt];
    package = pkgs.pulseaudioFull;
  };
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
  };
  environment.systemPackages = builtins.attrValues {inherit (pkgs) alsa-utils espeak pavucontrol pulseaudio-ctl;};
}
