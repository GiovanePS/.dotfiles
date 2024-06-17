vim.opt.rtp:append('usr/bin/fzf')

--  VIM PLUGINS
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')


-- FZF Dependencies:
-- sudo nala install fzf bat ripgrep silversearcher-ag perl universal-ctags
Plug('junegunn/fzf', { ['do'] = function()
  vim.fn['fzf#install']()
end })
Plug('junegunn/fzf.vim')


Plug('nvim-lua/plenary.nvim')

Plug('scottmckendry/cyberdream.nvim')
Plug 'tanvirtin/monokai.nvim'

-- Go Plugin
Plug('nvim-treesitter/nvim-treesitter')
Plug('nvim-treesitter/nvim-treesitter')

Plug('ray-x/go.nvim')
Plug('ray-x/guihua.lua'); -- recommended if need floating window support

-- Complete
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

vim.call('plug#end')

-- Requires
require('go').setup()
require('plugins.complete')
require'nvim-treesitter.configs'.setup{highlight={enable=true}}
