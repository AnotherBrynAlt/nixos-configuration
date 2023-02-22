{
  self',
  pkgs,
  config,
  lib,
  self,
  system,
  ...
}: {
  mission-control = {
    banner = with config.mission-control; ''
      function menu () {
        echo
        echo -e "\033[1;36mHi Sof, you're in a Nix  Flake Devshell\n\033[0m"
        ${wrapper}/bin/${wrapperName}
        echo
        echo -e "\033[4;32m(Run '${wrapperName}' to display this menu again)\n\033[0m"
        echo
      }
      menu
    '';
    scripts = {
      sops = {
        exec = pkgs.sops;
        category = "🔒️Security";
      };

      update-primary = {
        description = ''
          Update primary flake inputs
        '';
        exec = let
          inputs = ["nixpkgs" "home-manager"];
        in ''
          nix flake lock ${lib.foldl' (acc: x: acc + " --update-input " + x) "" inputs}
        '';
        category = "🏗️ Build";
      };

      activate = {
        description = ''
          Activate the current configuration for local system
        '';
        exec = ''
          ${lib.getExe pkgs.nixos-rebuild} --use-remote-sudo -j auto --flake .# switch
        '';
        category = "🏗️ Build";
      };
    };
  };
}
