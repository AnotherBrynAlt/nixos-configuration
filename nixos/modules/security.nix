_: {
  security = {
    doas = {
      enable = true;
      extraRules = [
        {
          users = ["bryn"];
          keepEnv = true;
          noPass = true;
        }
      ];
      wheelNeedsPassword = false;
    };
    sudo = {
      wheelNeedsPassword = false;
    };
  };
}
