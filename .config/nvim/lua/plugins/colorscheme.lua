return {
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai").setup({
        palette = require("monokai").soda,
      })

      vim.cmd([[colorscheme monokai]])
      vim.defer_fn(function()
        vim.cmd([[
        hi Normal guibg=none ctermbg=none
        hi LineNr guibg=none guifg=#999999 ctermbg=none
        hi SignColumn guibg=none ctermbg=none
        hi CursorLineNr guibg=none ctermbg=none
        hi Visual guibg=#5F5A60
        hi MatchParen cterm=bold ctermbg=none ctermfg=none guibg=#97e023 guifg=#333842
		hi MsgArea guibg=#222426
      ]])
      end, 200)
    end,
  },
}
