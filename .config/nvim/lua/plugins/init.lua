vim.opt.rtp:append('usr/bin/fzf')

--  VIM PLUGINS
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Fuzzer
-- FZF Dependencies:
-- sudo nala install fzf bat ripgrep silversearcher-ag perl universal-ctags
Plug('junegunn/fzf', { ['do'] = function()
  vim.fn['fzf#install']()
end })
Plug('junegunn/fzf.vim')

-- Gitsigns
Plug('lewis6991/gitsigns.nvim')

-- Lua Line
Plug('nvim-lua/plenary.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')

-- Themes
Plug('scottmckendry/cyberdream.nvim')
Plug('tanvirtin/monokai.nvim')
Plug('navarasu/onedark.nvim')
Plug('cpea2506/one_monokai.nvim')

-- Go Plugin
Plug('nvim-treesitter/nvim-treesitter')

Plug('ray-x/go.nvim')
Plug('ray-x/guihua.lua'); -- recommended if need floating window support

-- Bufferline
Plug('akinsho/bufferline.nvim', { ['tag'] = '*' })

-- Complete
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

vim.call('plug#end')

-- Plugin requires

-- Golang
require('go').setup()

-- Completions
require('plugins.complete')

-- Treesitter
require('nvim-treesitter.configs').setup{
  highlight={enable=true},
  ensure_installed = {'c', 'cpp', 'go', 'python', 'vim', 'vimdoc', 'lua'},
}

-- Lualine
require('plugins.lualine')

-- Gitsigns
require('gitsigns').setup()

-- Bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}