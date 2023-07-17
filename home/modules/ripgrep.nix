_: {
  programs = {
    ripgrep = {
      enable = true;
      arguments = [
        "--count"
        "--smart-case"
        "--max-columns-preview"
        "--colors=line:style:bold"
      ];
    };
  };
}
