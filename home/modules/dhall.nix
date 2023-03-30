{pkgs, ...}: {
  home.packages = builtins.attrValues {
    inherit
      (pkgs)
      dhall
      dhall-lsp-server
      dhall-bash
      dhall-json
      dhall-nix
      ;
    inherit (pkgs.dhallPackages) Prelude;
    inherit (pkgs.haskellPackages) dhall-toml dhall-yaml;
  };
}
