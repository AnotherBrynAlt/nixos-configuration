{
  description = "Configuration For NixOS Desktop by Sofia";
  inputs = {
    comma = {
      url = "github:nix-community/comma";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };

    flake-root = {
      url = "github:srid/flake-root";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mission-control = {
      url = "github:Platonic-Systems/mission-control";
    };

    nil = {
      url = "github:oxalica/nil";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
    };

    nixos-shell = {
      url = "github:Mic92/nixos-shell";
    };

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    nixpkgs-2211 = {
      url = "github:NixOS/nixpkgs/release-22.11";
    };

    nixpkgs-master = {
      url = "github:NixOS/nixpkgs/master";
    };

    nur = {
      url = "github:nix-community/NUR";
    };

    pre-commit-hooks-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
    };
  };

  outputs = {self, ...} @ inputs: let
    stateVersion = "22.11";
  in
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
            config.homeModules.graphical
            config.homeModules.internet
            config.homeModules.media
            config.homeModules.programming
          ];
        };

        nixosConfigurations = {
          laptop =
            self.lib.mkLinuxSystem "x86_64-linux" [
              ./nixos/config/laptop
              config.nixosModules.base
              config.nixosModules.desktop
              config.nixosModules.intel
            ]
            stateVersion;
        };
      };
    };
  nixConfig = {
    extra-trusted-substituters = "https://sofia.cachix.org";
    extra-trusted-public-keys = "sofia.cachix.org-1:xqwE0S1tPcsqfoayNUC0YdsDpj47LQ3Q+YTdDI1WwtE=";
  };
}
