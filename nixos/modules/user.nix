{
  pkgs,
  flake,
  ...
}: {
  # users.users.${flake.config.people.myself} = {
  users.users."bryn" = {
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel" "video" "audio"];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;
}
