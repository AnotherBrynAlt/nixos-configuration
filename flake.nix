{
  description = "Configuration For NixOS Desktop by Sofia";
  inputs = {
    # arion = {
    #   url = "github:hercules-ci/arion";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    colmena = {
      url = "github:zhaofengli/colmena";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    comma = {
      url = "github:nix-community/comma";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    deploy-flake = {
      url = "github:antifuchs/deploy-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # deploy-rs = {
    #   url = "github:serokell/deploy-rs";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # envfs = {
    #   url = "github:Mic92/envfs";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };

    flake-root = {
      url = "github:srid/flake-root";
    };

    # hercules-ci-agent = {
    #   url = "github:hercules-ci/hercules-ci-agent";
    #   inputs = {
    #     nixpkgs.follows = "nixpkgs";
    #     flake-parts.follows = "flake-parts";
    #     nix-darwin.follows = "darwin";
    #   };
    # };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mission-control = {
      url = "github:Platonic-Systems/mission-control";
    };

    # nickel = {
    #   url = "github:tweag/nickel";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    nil = {
      url = "github:oxalica/nil";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-alien = {
    #   url = "github:thiagokokada/nix-alien";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # nix-darwin = {
    #   url = "github:LnL7/nix-darwin";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # nix-init = {
    #   url = "github:nix-community/nix-init";
    # };

    nix-index-database = {
      url = "github:Mic92/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-serve-ng = {
    #   url = "github:aristanetworks/nix-serve-ng";
    #   inputs.nixpkgs.follows = "nixpkgs";
    #   inputs.utils.follows = "flake-utils";
    # };

    # nixago = {
    #   url = "github:nix-community/nixago";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # nixos-darwin = {
    #   url = "github:nixpkgs/nixpkgs-22.11-darwin";
    # };

    # nixos-generators = {
    #   url = "github:nix-community/nixos-generators";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # nixos-hardware = {
    #   url = "github:NixOS/nixos-hardware";
    # };

    # nixos-shell = {
    #   url = "github:Mic92/nixos-shell";
    # };

    nixpkgs.follows = "nixos-unstable";

    nixos-unstable = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    # nixos-stable.follows = "nixos-22.11";

    # "nixos-22.11" = {
    #   url = "github:NixOS/nixpkgs/release-22.11";
    # };

    # nixos-vscode-server = {
    #   url = "github:msteen/nixos-vscode-server";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # nixos-wsl = {
    #   url = "github:nix-community/NixOS-WSL";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # nixpkgs-master = {
    #   url = "github:NixOS/nixpkgs/master";
    # };

    # nur = {
    #   url = "github:nix-community/NUR";
    # };

    # nvfetcher = {
    #   url = "github:berberman/nvfetcher";
    # };

    pre-commit-hooks-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # plasma-manager = {
    #   url = "github:pjones/plasma-manager";
    #   inputs.nixpkgs.follows = "nixpkgs";
    #   inputs.home-manager-follows = "home-manager";
    # };

    # prefmanager = {
    #   url = "github:malob/prefmanager";
    # };

    # snowfall-lib = {
    #   url = "github:snowfallorg/lib";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
    };
  };

  outputs = {self, ...} @ inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      imports = [
        inputs.flake-root.flakeModule
        inputs.mission-control.flakeModule
        inputs.pre-commit-hooks-nix.flakeModule
        inputs.treefmt-nix.flakeModule
        ./home/modules
        ./lib
        ./nixos/modules
        ./parts
        ./users
      ];
      flake = {config, ...}: {
        homeConfigurations = {
          laptop = self.lib.mkHome "x86_64-linux" [
            ./home/config/laptop.nix
            config.homeModules.base
            config.homeModules.commandline
            config.homeModules.extra
            config.homeModules.graphical
            config.homeModules.internet
            config.homeModules.media
            config.homeModules.programming
            config.homeModules.security-tools
            inputs.nix-index-database.hmModules.nix-index
          ];
          desktop = self.lib.mkHome "x86_64-linux" [
            ./home/config/laptop.nix
            config.homeModules.base
            config.homeModules.commandline
            config.homeModules.extra
            config.homeModules.graphical
            config.homeModules.internet
            config.homeModules.media
            config.homeModules.programming
            config.homeModules.security-tools
            inputs.nix-index-database.hmModules.nix-index
          ];
        };

        nixosConfigurations = {
          laptop =
            self.lib.mkLinuxSystem "x86_64-linux" [
              ./nixos/config/laptop
              config.nixosModules.base
              config.nixosModules.desktop
              config.nixosModules.intel-hd
            ]
            "23.05";
          desktop =
            self.lib.mkLinuxSystem "x86_64-linux" [
              ./nixos/config/desktop
              config.nixosModules.base
              config.nixosModules.desktop
              config.nixosModules.nvidia
            ]
            "23.05";
        };
      };
    };
  nixConfig = {
    extra-trusted-substituters = "https://sofia.cachix.org";
    extra-trusted-public-keys = "sofia.cachix.org-1:xqwE0S1tPcsqfoayNUC0YdsDpj47LQ3Q+YTdDI1WwtE=";
  };
}
