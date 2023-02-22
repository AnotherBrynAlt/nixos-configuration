{inputs, ...}: let
  pkgs = import inputs.nixpkgs {
    system = "x86_64-linux";
    config.allowUnfree = true;
  };
in {
  imports = [./configuration.nix];
}
