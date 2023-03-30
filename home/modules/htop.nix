{pkgs, ...}: {
  programs = {
    htop = {
      enable = true;
      package = pkgs.htop-vim;
    };
  };
}
