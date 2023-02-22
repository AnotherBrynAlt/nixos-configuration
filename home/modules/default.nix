_: let
  alacritty = import ./alacritty.nix;
  aria2 = import ./aria2.nix;
  autojump = import ./autojump.nix;
  bat = import ./bat.nix;
  broot = import ./broot.nix;
  cursor = import ./cursor.nix;
  dircolors = import ./dircolors.nix;
  direnv = import ./direnv.nix;
  exa = import ./exa.nix;
  firefox = import ./firefox.nix;
  flameshot = import ./flameshot.nix;
  fzf = import ./fzf.nix;
  gallery-dl = import ./gallery-dl.nix;
  gh = import ./gh.nix;
  git = import ./git.nix;
  gitui = import ./gitui.nix;
  go = import ./go.nix;
  gtk = import ./gtk.nix;
  havoc = import ./havoc.nix;
  helix = import ./helix.nix;
  hexchat = import ./hexchat.nix;
  home-manager = import ./home-manager.nix;
  htop = import ./htop.nix;
  hyfetch = import ./hyfetch.nix;
  info = import ./info.nix;
  ion = import ./ion.nix;
  java = import ./java.nix;
  jq = import ./jq.nix;
  k9s = import ./k9s.nix;
  kakoune = import ./kakoune.nix;
  lazygit = import ./lazygit.nix;
  less = import ./less.nix;
  mangohud = import ./mangohud.nix;
  mcfly = import ./mcfly.nix;
  mercurial = import ./mercurial.nix;
  micro = import ./micro.nix;
  mpv = import ./mpv.nix;
  navi = import ./navi.nix;
  ncmpcpp = import ./ncmpcpp.nix;
  ncspot = import ./ncspot.nix;
  nheko = import ./nheko.nix;
  nix-index = import ./nix-index.nix;
  nnn = import ./nnn.nix;
  packages = import ./packages.nix;
  starship = import ./starship.nix;
  wezterm = import ./wezterm.nix;
  zoxide = import ./zoxide.nix;
  zsh = import ./zsh.nix;
in {
  flake = {
    homeModules = {
      inherit
        alacritty
        aria2
        autojump
        bat
        broot
        cursor
        dircolors
        direnv
        exa
        firefox
        flameshot
        fzf
        gallery-dl
        gh
        git
        gitui
        go
        gtk
        havoc
        helix
        hexchat
        home-manager
        htop
        hyfetch
        info
        ion
        java
        jq
        k9s
        kakoune
        lazygit
        less
        mangohud
        mcfly
        mercurial
        micro
        mpv
        navi
        ncmpcpp
        ncspot
        nheko
        nix-index
        nnn
        packages
        starship
        wezterm
        zoxide
        zsh
        ;
      base = {imports = [git home-manager ion nix-index packages zsh];};
      commandline = {imports = [autojump bat broot dircolors direnv exa fzf gallery-dl gh gitui helix htop hyfetch info less lazygit micro mcfly navi nnn starship zoxide];};
      graphical = {imports = [alacritty cursor flameshot gtk wezterm];};
      internet = {imports = [aria2 firefox hexchat nheko];};
      media = {imports = [mangohud mpv ncmpcpp ncspot];};
      programming = {imports = [go java jq k9s kakoune mercurial];};
      wayland = {imports = [havoc];};
    };
  };
}
