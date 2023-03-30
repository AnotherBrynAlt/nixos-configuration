{lib, ...}: {
  programs = {
    mpv = {
      enable = true;
      config = lib.mkMerge [
        {
          ytdl-format = "bestvideo+bestaudio";
          # cache-default = 4000000;
        }
      ];
    };
  };
}
