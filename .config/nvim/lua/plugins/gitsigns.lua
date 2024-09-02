-- ~/.config/nvim/lua/config/plugins.lua
return {
  -- other plugin configurations
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        -- other gitsigns configurations
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 300,
        },
      })

      -- Set custom highlights for GitSigns
      vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00ff00", bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffff00", bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff0000", bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsAddNr", { fg = "#00ff00", bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsChangeNr", { fg = "#ffff00", bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { fg = "#ff0000", bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsAddLn", { bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsChangeLn", { bg = "none" })
      vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { bg = "none" })
    end,
  },
  -- other plugin configurations
}
