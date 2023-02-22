{flake, ...}: {
  programs = {
    mercurial = {
      enable = true;
      userName = flake.config.people.myself;
      userEmail = flake.config.people.users.${flake.config.people.myself}.email;
    };
  };
}
