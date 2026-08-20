{ pkgs, lib, ... }:
{
  vim = {
    theme = {
      enable = true;
      name = "rose-pine";
      style = "main";
    };

    treesitter.enable = true;

    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    languages = {
      nix.enable = true;
      rust.enable = true;
      tex.enable = true;
    };

    keymaps = [
      {
        key = "<leader>pv";

        mode = "n";
        silent = true;
        action = "<cmd>Explore<cr>";
        desc = "Exit to netrw";
      }
    ];
  };
}
