{pkgs, ...}: {
  environment = {
    enableAllTerminfo = true;
    variables = {
    };
    systemPackages = builtins.attrValues {
      inherit
        (pkgs)
        curl
        dnsutils
        dosfstools
        efibootmgr
        gptfdisk
        git
        inetutils
        iputils
        killall
        mtr
        nethogs
        nano
        nix-ld
        pciutils
        sshfs
        smem
        sysstat
        usbutils
        util-linux
        wget
        ;
    };
  };
}
