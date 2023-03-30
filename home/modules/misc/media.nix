{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) chafa ffmpeg-full handbrake libgen-cli;
  };
}
