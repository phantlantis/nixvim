{helpers, ...}: {
  plugins = {
    nix.enable = true;

    lsp.servers.nil_ls.enable = true;

    treesitter = {
      nixvimInjections = true;
    };

    none-ls = {
      enable = true;
      sources = {
        formatting.alejandra.enable = true;
        diagnostics.statix.enable = true;
        code_actions.statix.enable = true;
      };
    };
  };
}
