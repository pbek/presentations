---
title: Modern Development Tooling using nix, direnv and zellij
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.svg')
footer: 'Patrizio Bekerle - https://github.com/pbek/presentations'
---

![bg left:40% 80%](../tu-graz.svg)

# Modern Development Tooling

Modern Development Tooling using nix, direnv and zellij

---

# Nix ![w:50px](./images/nix-snowflake-colours.svg)

[Nix](https://nixos.org/) is a package manager and system configuration tool designed to make system management more reliable and reproducible.

Here are some key points about Nix:

1) Package management: Nix allows you to install, upgrade, and remove software packages on your system.
2) Declarative configuration: It enables you to describe your entire system configuration in a declarative manner.

---

# Nix ![w:50px](./images/nix-snowflake-colours.svg)

3) Reproducibility: Nix aims to create reproducible builds and environments, ensuring that software works consistently across different machines.
4) Isolation: Packages are stored in isolation from each other, which helps prevent dependency conflicts.
5) Rollbacks: Nix makes it easy to roll back to previous system states or package versions if needed.
6) Multi-user support: Different users can have different software environments on the same system.

---

# Nix ![w:50px](./images/nix-snowflake-colours.svg)

7) NixOS: There's also a Linux distribution called [NixOS](https://nixos.org/download/#nixos-iso) that's built around the Nix package manager.
8) Functional approach: Nix uses a functional programming language for its configuration, which can make it powerful but also require a learning curve.
9) Nix is available for [Linux](https://nixos.org/download/#nix-install-linux), [Windows]((https://nixos.org/download/#nix-install-windows)) (WSL2), [macOS](https://nixos.org/download/#nix-install-macos) and [Docker](https://nixos.org/download/#nix-install-docker).

---

<style scoped>
  marp-pre {
    font-size: 0.6em;
  }
</style>

# Nix host config ![w:50px](./images/nix-snowflake-colours.svg)

[Simplified host configuration](https://github.com/pbek/nixcfg/blob/84a8e861d662ac8d20c58a8322ced717690290a1/hosts/sinope/configuration.nix) (from [pbek/nixcfg](https://github.com/pbek/nixcfg)):

```nix
{ config, pkgs, username, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/mixins/users.nix
      ../../modules/mixins/desktop.nix
      ../../modules/mixins/audio.nix
      ../../modules/mixins/jetbrains.nix
      ../../modules/mixins/openssh.nix
    ];

  networking.hostName = "sinope"; # Define your hostname.

  environment.systemPackages = with pkgs; [
    go-passbolt-cli
  ];
}
```
