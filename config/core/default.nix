{pkgs, ...}: {
  imports = [
    ./core.nix

    ./treesitter.nix
  ];
}
