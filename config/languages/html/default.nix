{
  plugins = {
    emmet = {
      enable = true;
      settings.leader_key = "<leader><leader>";
    };
    none-ls = {
      sources = {
        formatting.prettier.enable = true;
        formatting.prettier.disableTsServerFormatter = true;
      };
    };

    lsp.servers = {
      html.enable = true;

      emmet_ls = {
        enable = true;
        filetypes = [
          "css"
          "html"
        ];
      };
    };
  };
}
