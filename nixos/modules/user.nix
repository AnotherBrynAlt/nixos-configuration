{
  self,
  pkgs,
  flake,
  config,
  ...
}: {
  users.users.${flake.config.people.myself} = {
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel" "video" "audio"];
    shell = pkgs.zsh;
    openssh.authorizedKeys.keys = flake.config.people.myself.sshKeys;
  };

  programs.zsh.enable = true;
}
