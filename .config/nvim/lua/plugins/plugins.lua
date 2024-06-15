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


vim.call('plug#end')

require('colourscheme')
