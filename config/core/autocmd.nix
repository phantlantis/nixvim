{helpers, ...}: {
  autoCmd = [
    {
      event = ["BufWritePre"];
      desc = "Autoformat on save";
      command = "lua vim.lsp.buf.format()";
    }
  ];
}
