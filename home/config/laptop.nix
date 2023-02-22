{flake, ...}: let
  username = flake.config.people.myself;
in {
  home = {
    stateVersion = "22.11";
    inherit username;
    homeDirectory = "/home/${username}";
  };
}
