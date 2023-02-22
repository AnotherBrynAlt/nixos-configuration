let
  myself = "bryn";
in {
  inherit myself;
  users = {
    "${myself}" = {
      name = "Bryn";
      email = "bryn.discord@gmail.com";
      sshKeys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOBDGkggZqAPjUEtzl5tJLLLOh8OMElRYSTZqUNnYENH bryn@penguin"
      ];
    };
  };
}
