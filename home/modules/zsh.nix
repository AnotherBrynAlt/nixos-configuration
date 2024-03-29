{config, ...}: {
  programs = {
    zsh = {
      enable = true;
      # dotDir = "${config.xdg.configHome}/zsh";
      enableAutosuggestions = true;
      enableCompletion = true;
      syntaxHighlighting = {
        enable = true;
      };
      enableVteIntegration = true;
      autocd = true;
      # dirHashes = {
      # nix = "${config.xdg.configHome}/nixos";
      # };
      # zimfw = {
      # enable = false;
      # plugins = [
      # {
      # name = "archive";
      # }
      # ];
      # };
    };
  };
}
