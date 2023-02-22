{flake, ...}: {
  programs = {
    git = {
      enable = true;
      delta = {
        enable = true;
      };
      # TODO: Compare delta to these
      # difftastic = {
      #   enable = true;
      # };
      # riff = {
      #   enable = true;
      # };
      userName = flake.config.people.myself;
      userEmail = flake.config.people.users.${flake.config.people.myself}.email;
    };
  };
}
