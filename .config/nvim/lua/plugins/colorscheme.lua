return {
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai").setup({
        palette = require("monokai").soda,
        transparent = true,
      })
      -- Ensure the colorscheme is applied
      vim.cmd([[colorscheme monokai]])
      -- Set the background of the Normal and other highlight groups to none after a short delay
      vim.defer_fn(function()
        vim.cmd([[
          hi Normal guibg=none ctermbg=none
          hi LineNr guibg=none ctermbg=none
          hi SignColumn guibg=none ctermbg=none
          hi CursorLineNr guibg=none ctermbg=none
          hi Visual guibg=#5F5A60
        ]])
      end, 100)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai",
    },
  },
}
