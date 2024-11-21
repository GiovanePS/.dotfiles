return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window.position = "float"

    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", fg = "#f6f6ec" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", fg = "#f6f6ec" })
    vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = "#211F22", fg = "#f6f6ec", bold = true })
  end,
}
