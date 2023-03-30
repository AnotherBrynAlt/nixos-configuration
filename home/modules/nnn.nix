{
  config,
  pkgs,
  ...
}: let
  cfg = config.programs.nnn;
  shellAliases = {
    n = "${cfg.package}/bin/nnn -a";
    nnn = "${cfg.package}/bin/nnn -a";
  };
in {
  programs = {
    nnn = {
      enable = true;
      extraPackages = builtins.attrValues {
        inherit
          (pkgs)
          bat
          exa
          ffmpeg
          ffmpegthumbnailer
          file
          fontpreview
          imagemagick
          man
          mediainfo
          pistol
          sxiv
          unzip
          viu
          w3m
          ;
      };
      plugins = {
        src = "${pkgs.nnn.src}/plugins";
        mappings = {
          p = "preview-tui";
        };
      };
    };
    bash = {inherit shellAliases;};
    fish = {inherit shellAliases;};
    zsh = {inherit shellAliases;};
  };

  home.sessionVariables = {
    NNN_PREVIEWDIR = "${config.xdg.cacheHome}/nnn/previews";
  };
}
