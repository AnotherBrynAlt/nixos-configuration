{pkgs, ...}: let
  vsce = pkgs.vscode-extensions;
in {
  programs = {
    vscode = {
      enable = true;
      enableExtensionUpdateCheck = true;
      enableUpdateCheck = true;
      package = (pkgs.vscode.override {isInsiders = true;}).overrideAttrs (oldAttrs: {
        src = builtins.fetchTarball {
          url = "https://update.code.visualstudio.com/latest/linux-x64/insider";
          sha256 = "1ys9rvn6dl50bv5h9w4p9mlv6gbykqzc72mjjg1lg18qvdrld768";
        };
        version = "latest";
      });
      # haskell = {
      #   enable = true;
      #   # hie = {
      #   #   enable = true;
      #   # };
      # };
      mutableExtensionsDir = false;
      extensions = builtins.attrValues {
        inherit (vsce.bbenoist) nix;
        inherit (vsce.catppuccin) catppuccin-vsc;
      };
    };
  };
}
