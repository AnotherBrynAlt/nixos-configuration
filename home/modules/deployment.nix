{
  pkgs,
  inputs,
  system,
  ...
}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) deploy-rs;
    # inherit (inputs.colmena.packages.${system}) colmena;
    # inherit (inputs.deploy-flake.packages.${system}) deploy-flake;
  };
}
