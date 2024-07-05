-- ~/.config/nvim/lua/config/plugins.lua

-- Load lualine plugin
return {
  -- Other plugin configurations
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto", -- Adjust theme as per your setup
        },
        sections = {
          lualine_c = { { "filename", path = 1 } }, -- Display filename with full path
        },
        inactive_sections = {
          lualine_c = {},
        },
      })

      -- Set custom highlight for lualine filename
      vim.cmd([[
        highlight LualineFilename guifg=#f8f8f0 guibg=#272a30
      ]])
    end,
  },
  -- Other plugin configurations
}
