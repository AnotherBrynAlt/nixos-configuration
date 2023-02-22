{
  self,
  inputs,
  config,
  ...
}: let
  pkgsForSystem = system:
    import inputs.nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };
in {
  flake = {
    lib = {
      mkLinuxSystem = system: modules: stateVersion:
        inputs.nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit system stateVersion inputs;
            flake = {inherit config;};
          };
          inherit modules;
        };
      mkHome = system: modules:
        inputs.home-manager.lib.homeManagerConfiguration {
          pkgs = pkgsForSystem system;
          extraSpecialArgs = {
            inherit system inputs;
            flake = {inherit config;};
          };
          inherit modules;
        };
      inherit pkgsForSystem;
    };
  };
}
