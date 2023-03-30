{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) alejandra ccache fx htmlq just tidy-viewer xsv;
    inherit (pkgs.python3Packages) yq;
  };
}
