return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local actions = require("telescope.actions")

      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-h>"] = actions.preview_scrolling_left,
              ["<C-l>"] = actions.preview_scrolling_right,
            },
            n = {
              ["<C-h>"] = actions.preview_scrolling_left,
              ["<C-l>"] = actions.preview_scrolling_right,
            },
          },
        },
      })
    end,
  },
}
