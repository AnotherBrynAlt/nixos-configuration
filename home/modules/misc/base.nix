{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) file mediainfo moreutils nix-output-monitor pigz unzip;
  };
}
