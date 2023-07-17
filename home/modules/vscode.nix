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
          sha256 = "0xbb0342ydn3qlvh45k9prji8aic2y6klakw3431yasxm1kg3ypk";
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
