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

-- Plenary
Plug('nvim-lua/plenary.nvim')

-- Lua Line
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')

-- Themes
Plug('scottmckendry/cyberdream.nvim')
Plug('tanvirtin/monokai.nvim')
Plug('navarasu/onedark.nvim')
Plug('cpea2506/one_monokai.nvim')

-- Treesitter
Plug('nvim-treesitter/nvim-treesitter')

-- Nvim Tree
Plug('nvim-tree/nvim-tree.lua')

-- Go Plugin
Plug('ray-x/go.nvim')
Plug('ray-x/guihua.lua'); -- recommended if need floating window support

-- Bufferline
Plug('akinsho/bufferline.nvim', { ['tag'] = '*' })

-- LSP
Plug('neovim/nvim-lspconfig')

-- Completions
Plug('ms-jpq/coq_nvim', { ['branch'] = 'coq' })
Plug('ms-jpq/coq.artifacts', { ['branch'] = 'artifacts'})
Plug('ms-jpq/coq.thirdparty', { ['branch'] = '3p'})

-- Mason
Plug 'williamboman/mason.nvim'

vim.call('plug#end')

-- PLUGIN REQUIRES

-- Golang
require('go').setup()

-- Completions
require("mason").setup()

-- Treesitter
require('nvim-treesitter.configs').setup{
  highlight={enable=true},
  ensure_installed = {'c', 'cpp', 'go', 'python', 'vim', 'vimdoc', 'lua', 'bash', 'dockerfile'},
}

-- LSP CONFIG
require('coq')
-- Golang
require('lspconfig').gopls.setup{
  coq.lsp_ensure_capabilities()
}
vim.cmd(':COQnow -s')
-- C/C++
require('lspconfig').clangd.setup{
  coq.lsp_ensure_capabilities()
}

-- Lualine
require('plugins.lualine')

-- Gitsigns
require('gitsigns').setup()
vim.cmd(':Gitsigns toggle_current_line_blame')

-- Bufferline
require("bufferline").setup{}

require('plugins.nvim_tree')
