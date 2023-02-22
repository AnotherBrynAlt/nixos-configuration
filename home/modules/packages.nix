{
  pkgs,
  inputs,
  system,
  ...
}: {
  home.packages = builtins.attrValues {
    inherit (pkgs) alejandra betterdiscordctl discord fx just microsoft-edge ripgrep;
    inherit (inputs.comma.packages.${system}) default;
  };
}
