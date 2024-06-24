return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-F>"] = function(prompt_bufnr)
              actions.preview_scrolling_left(prompt_bufnr)
            end,
          },
        },
      },
    })
  end,
}
