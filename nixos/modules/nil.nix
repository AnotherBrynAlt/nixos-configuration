{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = [inputs.nil.packages.${pkgs.system}.default];
}
