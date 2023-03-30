{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) pyright;
  };
  programs = {
    pylint = {
      enable = true;
    };
  };
}
