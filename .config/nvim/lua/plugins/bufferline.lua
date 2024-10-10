return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          always_show_bufferline = true,
          show_buffer_close_icons = false,
          show_close_icon = false,
          separator_style = "slope",
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
          end,
        },
        highlights = {
          fill = {
            fg = "none",
            bg = "none",
          },
          background = {
            fg = "none",
            bg = "none",
          },
          separator = {
            bg = "none",
          },
          modified = {
            bg = "none",
          },
          -- Warnings
          warning = {
            fg = "#B3B300",
            bg = "none",
            sp = "none",
          },
          warning_visible = {
            fg = "#B3B300",
          },
          warning_selected = {
            fg = "#FFFF00",
          },
          warning_diagnostic = {
            fg = "#B3B300",
            bg = "none",
            sp = "none",
          },
          warning_diagnostic_visible = {
            fg = "#B3B300",
          },
          warning_diagnostic_selected = {
            fg = "#FFFF00",
          },
          -- Error
          error = {
            fg = "#C30000",
            bg = "none",
            sp = "none",
          },
          error_visible = {
            fg = "#C30000",
          },
          error_selected = {
            fg = "#FF0000",
          },
          error_diagnostic = {
            fg = "#C30000",
            bg = "none",
            sp = "none",
          },
          error_diagnostic_visible = {
            fg = "#C30000",
          },
          error_diagnostic_selected = {
            fg = "#FF0000",
          },
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
