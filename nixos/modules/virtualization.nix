_: {
  virtualisation = {
    docker = {
      enable = true;
      # storageDriver = "btrfs";
    };
  };

  users.users.bryn.extraGroups = ["docker"];

  users.extraGroups.docker.members = ["bryn"];
}
