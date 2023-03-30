_: {
  programs = {
    tex = {
      enable = true;
      extraPackages = "tpkgs: {inherit (tpkgs) collection-basic collection-fontsrecommended algorithms;}";
    };
  };
}
