#!/usr/bin/env -S just --justfile

set shell := ["zsh", "-cu"]

set dotenv-load

set export

log := "warn"
export JUST_LOG := log

# build current host
build:
  {{if os() == "linux" { "nixos"  } else { "darwin"  } }}-rebuild build --verbose --print-build-logs --show-trace --flake .#$(hostname)

# switch current host
switch:
  {{if os() == "linux" { "sudo nixos"  } else { "darwin"  } }}-rebuild switch --verbose --print-build-logs --show-trace --flake .#$(hostname)

test:
  echo {{if os() == "linux" { "sudo nixos"  } else { "darwin"  } }}

