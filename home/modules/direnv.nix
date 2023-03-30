_: {
  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
      config = {
        global.warn_timeout = "30s";
        whitelist = {
          prefix = ["$XDG_CONFIG_HOME"];
        };
      };
    };
  };
}
