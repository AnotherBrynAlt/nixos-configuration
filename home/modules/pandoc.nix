_: {
  programs = {
    pandoc = {
      enable = true;
      defaults = {
        metadata = {
          author = "Bryn";
        };
        pdf-engine = "lualatex";
      };
    };
  };
}
