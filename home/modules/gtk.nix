{pkgs, ...}: {
  gtk = {
    cursorTheme = {
      name = "Dracula";
      package = pkgs.dracula-theme;
      size = 16;
    };
    theme = {
      name = "Dracula";
      package = pkgs.dracula-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    font = {
      name = "JetBrains Mono Medium";
      package = pkgs.jetbrains-mono;
      size = 12;
    };
  };
}
