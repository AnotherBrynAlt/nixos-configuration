{
  pkgs,
  flake,
  ...
}: {
  users.users.${flake.config.people.myself} = {
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel" "video" "audio"];
    shell = pkgs.zsh;
  };
}
