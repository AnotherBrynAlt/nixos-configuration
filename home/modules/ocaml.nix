{pkgs, ...}: {
  home.packages = builtins.attrValues {inherit (pkgs) darcs gcc_multi gnumake;};
  programs = {
    opam = {
      enable = true;
    };
    zsh = {
      initExtra = ''
        [[ ! -r /home/bryn/.opam/opam-init/init.zsh ]] || source /home/bryn/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
      '';
    };
  };
}
