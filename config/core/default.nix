{pkgs, ...}: {
  imports = [
    ./core.nix
    ./keymaps.nix
    ./neogen.nix
    ./treesitter.nix
  ];

  globals.mapleader = " ";
  clipboard.register = "unnamedplus";
  
  plugins = {
    surround.enable = true;
    comment-nvim.enable = true;
  };

}
