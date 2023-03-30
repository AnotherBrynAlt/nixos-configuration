{
  self,
  inputs,
  config,
  ...
}: {
  imports = [../colmena.nix];

  perSystem = {
    pkgs,
    lib,
    config,
    self',
    ...
  }: {
    imports = [./treefmt.nix ./mission-control.nix ./pre-commit.nix ./devShells.nix];
  };

  flake = {
    config,
    inputs,
    self',
    ...
  }: {
    # imports = [./colmena.nix];
  };
}
