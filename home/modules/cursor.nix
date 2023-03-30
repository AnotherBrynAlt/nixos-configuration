{pkgs, ...}: {
  home.pointerCursor = {
    x11.enable = true;
    gtk.enable = true;
    name = "Dracula-cursors";
    package = pkgs.dracula-theme;
  };
}
