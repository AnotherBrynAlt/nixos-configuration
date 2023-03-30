_: let
  alacritty = import ./alacritty.nix;
  aria2 = import ./aria2.nix;
  autojump = import ./autojump.nix;
  apple-music = import ./apple-music.nix;
  aws = import ./aws.nix;
  bat = import ./bat.nix;
  base-misc = import ./misc/base.nix;
  bottom = import ./bottom.nix;
  broot = import ./broot.nix;
  commandline-misc = import ./misc/commandline.nix;
  cursor = import ./cursor.nix;
  deployment = import ./deployment.nix;
  dhall = import ./dhall.nix;
  dircolors = import ./dircolors.nix;
  direnv = import ./direnv.nix;
  discord = import ./discord.nix;
  exa = import ./exa.nix;
  firefox = import ./firefox.nix;
  flameshot = import ./flameshot.nix;
  fzf = import ./fzf.nix;
  gallery-dl = import ./gallery-dl.nix;
  gh = import ./gh.nix;
  git = import ./git.nix;
  gitui = import ./gitui.nix;
  go = import ./go.nix;
  graphical-misc = import ./misc/graphical.nix;
  gtk = import ./gtk.nix;
  havoc = import ./havoc.nix;
  helix = import ./helix.nix;
  hexchat = import ./hexchat.nix;
  home-manager = import ./home-manager.nix;
  htop = import ./htop.nix;
  hyfetch = import ./hyfetch.nix;
  info = import ./info.nix;
  internet-misc = import ./misc/internet.nix;
  ion = import ./ion.nix;
  java = import ./java.nix;
  jq = import ./jq.nix;
  k9s = import ./k9s.nix;
  kakoune = import ./kakoune.nix;
  lazygit = import ./lazygit.nix;
  less = import ./less.nix;
  mako = import ./mako.nix;
  mangohud = import ./mangohud.nix;
  mcfly = import ./mcfly.nix;
  media-misc = import ./misc/media.nix;
  mercurial = import ./mercurial.nix;
  micro = import ./micro.nix;
  mpv = import ./mpv.nix;
  mpris-proxy = import ./mpris-proxy.nix;
  navi = import ./navi.nix;
  ncmpcpp = import ./ncmpcpp.nix;
  ncspot = import ./ncspot.nix;
  nheko = import ./nheko.nix;
  neovim = import ./neovim.nix;
  nix-index = import ./nix-index.nix;
  nnn = import ./nnn.nix;
  nushell = import ./nushell.nix;
  obs-studio = import ./obs-studio.nix;
  ocaml = import ./ocaml.nix;
  octant = import ./octant.nix;
  packages = import ./packages.nix;
  pandoc = import ./pandoc.nix;
  papis = import ./papis.nix;
  piston-cli = import ./piston-cli.nix;
  productivity-misc = import ./misc/productivity.nix;
  programming-misc = import ./misc/programming.nix;
  python = import ./python.nix;
  ruby = import ./ruby.nix;
  rbw = import ./rbw.nix;
  scala = import ./scala.nix;
  security-tools = import ./security-tools.nix;
  sioyek = import ./sioyek.nix;
  spotify = import ./spotify.nix;
  ssh = import ./ssh.nix;
  starship = import ./starship.nix;
  syncthing = import ./syncthing.nix;
  swaylock = import ./swaylock.nix;
  tealdeer = import ./tealdeer.nix;
  tex = import ./tex.nix;
  thunderbird = import ./thunderbird.nix;
  tiny = import ./tiny.nix;
  tmate = import ./tmate.nix;
  tmux = import ./tmux.nix;
  vscode = import ./vscode.nix;
  wayland-misc = import ./misc/wayland.nix;
  wezterm = import ./wezterm.nix;
  xdg = import ./xdg.nix;
  yt-dlp = import ./yt-dlp.nix;
  zoxide = import ./zoxide.nix;
  # zimfw = import ./zimfw.nix;
  zsh = import ./zsh.nix;
in {
  flake = {
    homeModules = {
      inherit
        alacritty
        aria2
        autojump
        apple-music
        aws
        bat
        base-misc
        bottom
        broot
        commandline-misc
        cursor
        deployment
        dhall
        dircolors
        direnv
        discord
        exa
        firefox
        flameshot
        fzf
        gallery-dl
        gh
        git
        gitui
        go
        graphical-misc
        gtk
        havoc
        helix
        hexchat
        home-manager
        htop
        hyfetch
        info
        internet-misc
        ion
        java
        jq
        k9s
        kakoune
        lazygit
        less
        media-misc
        mako
        mangohud
        mcfly
        mercurial
        micro
        mpv
        mpris-proxy
        navi
        ncmpcpp
        ncspot
        neovim
        nheko
        nix-index
        nnn
        nushell
        obs-studio
        ocaml
        octant
        packages
        pandoc
        papis
        piston-cli
        productivity-misc
        programming-misc
        python
        ruby
        rbw
        scala
        security-tools
        sioyek
        spotify
        ssh
        starship
        swaylock
        syncthing
        tealdeer
        thunderbird
        tiny
        tmate
        tmux
        vscode
        wayland-misc
        wezterm
        xdg
        yt-dlp
        zoxide
        # zimfw
        
        zsh
        ;
      base = {imports = [base-misc git home-manager nix-index xdg zsh];};
      commandline = {imports = [commandline-misc autojump bat broot dircolors direnv exa fzf gallery-dl gh gitui helix htop hyfetch info less lazygit micro mcfly navi nnn rbw starship tealdeer tmux zoxide];};
      extra = {imports = [bottom ion nushell packages];};
      graphical = {imports = [graphical-misc alacritty cursor flameshot gtk wezterm];};
      internet = {imports = [internet-misc aria2 discord firefox hexchat nheko ssh syncthing thunderbird tiny tmate yt-dlp];};
      media = {imports = [media-misc mangohud mpv mpris-proxy ncmpcpp ncspot spotify];};
      productivity = {imports = [productivity-misc pandoc papis sioyek tex];};
      programming = {imports = [programming-misc deployment dhall go java jq k9s kakoune mercurial neovim ocaml octant piston-cli python ruby scala vscode];};
      wayland = {imports = [wayland-misc mako havoc swaylock];};
    };
  };
}
