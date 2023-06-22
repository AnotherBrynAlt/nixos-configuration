{
  pkgs,
  config,
  ...
}: {
  devShells = {
    default = pkgs.mkShell {
      inputsFrom = [config.mission-control.devShell];
      nativeBuildInputs = [config.treefmt.build.wrapper];
      shellHook = ''
        ${config.pre-commit.installationScript}
      '';
    };
    # default = config.mission-control.installToDevShell (pkgs.mkShell {
    #   buildInputs = [];
    #   nativeBuildInputs = [config.treefmt.build.wrapper];
    #   shellHook = ''
    #     ${config.pre-commit.installationScript}
    #   '';
    # });
  };
}
