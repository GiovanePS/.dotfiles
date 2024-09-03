return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          always_show_bufferline = true,
        },
      })

      vim.api.nvim_set_keymap(
        "n",
        "<localleader>l",
        ":BufferLineMoveNext<CR>",
        { noremap = true, silent = true, desc = "Move bufferline next" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<localleader>h",
        ":BufferLineMovePrev<CR>",
        { noremap = true, silent = true, desc = "Move bufferline previous" }
      )
    end,
  },
}
