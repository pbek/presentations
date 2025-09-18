{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    just
    marp-cli
    lazygit
    zellij
];

  enterShell = ''
    echo "🔨 Presentation dev shell"
  '';


  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    # https://devenv.sh/reference/options/#git-hookshookstreefmt
    # https://github.com/numtide/treefmt
    # https://github.com/numtide/treefmt-nix
    treefmt = {
      enable = true;
      settings.formatters = with pkgs; [
        nodePackages.prettier
        nixfmt-rfc-style
        statix
        taplo
      ];
    };

    # https://devenv.sh/reference/options/#git-hookshooksdeadnix
    # https://github.com/astro/deadnix
    deadnix = {
      enable = true;
      settings = {
        edit = true; # Allow to edit the file if it is not formatted
      };
    };
  };

  # See full reference at https://devenv.sh/reference/options/
}
