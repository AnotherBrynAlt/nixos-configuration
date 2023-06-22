{
  inputs,
  config,
  self',
  ...
}: {
  flake = {
    colmena = {
      meta = let
        inherit inputs;
        system = "x86_64-linux";
        stateVersion = "23.11";
        nixpkgs = config.lib.pkgsForSystem system;
      in {
        inherit nixpkgs;
        specialArgs = {
          inherit inputs stateVersion system;
          flake = {
            inherit config self';
          };
          pkgs = nixpkgs;
        };
      };
      laptop = {
        imports = [
          ../nixos/config/laptop
          config.nixosModules.base
          config.nixosModules.desktop
          config.nixosModules.intel-hd
        ];
        deployment = {
          targetHost = "127.0.0.1";
          targetUser = "bryn";
        };
      };
    };
  };
}
