return {
  "MeanderingProgrammer/markdown.nvim",
  name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
  dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
  config = function()
    require("render-markdown").setup({
      latex = { enabled = false },
    })
  end,
}
