{pkgs, ...}: {
  extraPackages = [pkgs.fd pkgs.ripgrep];

  plugins.telescope = {
    enable = true;
    defaults = {
      layout_strategy = "vertical";
      layout_config = {
        preview_cutoff = 20;
        mirror = true;
        prompt_position = "top";
      };
    };
    extensions = {
      file_browser = {
        enable = true;
        path = "%:p:h";
        mappings = {"i" = {"<c-y>" = "create_from_prompt";};};
      };
      fzf-native.enable = true;
    };
    keymaps = {
      "<leader>fg" = {
        action = "live_grep";
        desc = "Live Grep";
      };
      "<leader>ff" = {
        action = "find_files";
        desc = "Find Files";
      };
      "<leader>fb" = {
        action = "buffers";
        desc = "Buffers";
      };
      "<leader>fh" = {
        action = "help_tags";
        desc = "Help Tags";
      };
    };
  };
}
