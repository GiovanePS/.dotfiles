return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "float",
      },
    })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#222426", fg = "#f6f6ec" }) -- base1 for bg, white for fg
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#222426", fg = "#f6f6ec" }) -- base1 for bg, white for fg
  end,
}
