{
  pkgs,
  config,
  ...
}: {
  devShells = {
    default = config.mission-control.installToDevShell (pkgs.mkShell {
      buildInputs = [];
      nativeBuildInputs = [config.treefmt.build.wrapper];
      shellHook = ''
        ${config.pre-commit.installationScript}
      '';
    });
  };
}
