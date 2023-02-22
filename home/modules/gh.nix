{pkgs, ...}: {
  programs = {
    gh = {
      enable = true;
      extensions = builtins.attrValues {inherit (pkgs) gh-actions-cache gh-dash gh-eco gh-markdown-preview;};
      # missing as of 2023-02-21: gh-branch gh-changelog gh-clone-org gh-f gh-graph gh-grep gh-install gh-net gh-poi
    };
  };
}
