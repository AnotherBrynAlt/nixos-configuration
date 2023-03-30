{
  pkgs,
  inputs,
  system,
  ...
}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) hydra-check ripgrep;
    inherit (inputs.comma.packages.${system}) default;
  };
}
