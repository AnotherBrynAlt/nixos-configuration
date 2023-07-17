{
  pkgs,
  inputs,
  system,
  ...
}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) hydra-check;
    inherit (inputs.comma.packages.${system}) default;
  };
}
