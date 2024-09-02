return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local actions = require("telescope.actions")

      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-f>"] = actions.preview_scrolling_left,
              ["<C-b>"] = actions.preview_scrolling_right,
            },
            n = {
              ["<C-f>"] = actions.preview_scrolling_left,
              ["<C-b>"] = actions.preview_scrolling_right,
            },
          },
        },
      })
    end,
  },
}
