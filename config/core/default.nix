{pkgs, ...}: {
  imports = [
    ./autocmd.nix
    ./cmp.nix
    ./colorschemes.nix
    ./core.nix
    ./keymaps.nix
    ./neogen.nix
    ./snippets.nix
    ./treesitter.nix
    ./telescope
    ./ultimate-autopairs.nix
  ];

  globals.mapleader = " ";
  clipboard.register = "unnamedplus";

  plugins = {
    surround.enable = true;
    comment-nvim.enable = true;
  };
}
