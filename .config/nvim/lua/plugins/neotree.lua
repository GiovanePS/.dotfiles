return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "float",
      },
    })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#211F22", fg = "#f6f6ec" }) -- base1 for bg, white for fg
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#211F22", fg = "#f6f6ec" }) -- base1 for bg, white for fg

    -- Set custom highlights for NeoTree titles
    vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = "#211F22", fg = "#f6f6ec", bold = true }) -- base1 for bg, white for fg, bold text
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { bg = "#211F22", fg = "#78DCE8", bold = true }) -- base1 for bg, aqua for fg, bold text
    vim.api.nvim_set_hl(0, "NeoTreeFileName", { bg = "none", fg = "#f6f6ec" }) -- transparent bg, white for fg
    vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { bg = "none", fg = "#97e023" }) -- transparent bg, green for fg
  end,
}
