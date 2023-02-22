{
  inputs,
  pkgs,
  ...
}: {
  nix = {
    package = pkgs.nixUnstable;
    settings = {
      auto-optimise-store = true;
    };
    gc = {
      automatic = false;
    };
    registry.nixpkgs.flake = inputs.nixpkgs;
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '';
  };

  nixpkgs.config.allowUnfree = true;
}
