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

-- Go Plugin
Plug('nvim-treesitter/nvim-treesitter')
Plug('neovim/nvim-lspconfig')
Plug('ray-x/go.nvim')
Plug('ray-x/guihua.lua'); -- recommended if need floating window support

vim.call('plug#end')

require('plugins.colourscheme')
require('go').setup()
