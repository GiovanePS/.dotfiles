return {
  "folke/which-key.nvim",
  opts = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>y", mode = "n", icon = { icon = "󰅇 ", color = "yellow" }, desc = "Copy to system clipboard" },
      {
        "<leader>y",
        mode = "v",
        icon = { icon = "󰅇 ", color = "yellow" },
        desc = "Copy selection to system clipboard",
      },
    })
  end,
}
