{pkgs, ...}: {
  programs = {
    nnn = {
      enable = true;
      extraPackages = builtins.attrValues {
        inherit
          (pkgs)
          ffmpegthumbnailer
          mediainfo
          sxiv
          ;
      };
    };
  };
}
