return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "float",
      },
    })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", fg = "#f6f6ec" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", fg = "#f6f6ec" })

    -- Set custom highlights for NeoTree titles
    vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = "#211F22", fg = "#f6f6ec", bold = true })
    -- vim.api.nvim_set_hl(0, "NeoTreeRootName", { bg = "#211F22", fg = "#78DCE8", bold = true })
    -- vim.api.nvim_set_hl(0, "NeoTreeFileName", { bg = "none", fg = "#f6f6ec" })
    -- vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { bg = "none", fg = "#97e023" })
  end,
}
