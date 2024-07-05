return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "float",
      },
    })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#272a30", fg = "#f8f8f0" }) -- base1 for bg, white for fg
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#272a30", fg = "#f8f8f0" }) -- base1 for bg, white for fg
  end,
}
