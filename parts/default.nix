{
  self,
  inputs,
  config,
  ...
}: {
  perSystem = {
    pkgs,
    lib,
    config,
    self',
    ...
  }: {
    imports = [./treefmt.nix ./mission-control.nix ./pre-commit.nix ./devShells.nix];
  };
}
