{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) grim slurp;
  };
}
