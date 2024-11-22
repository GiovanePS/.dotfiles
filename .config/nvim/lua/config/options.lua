-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable compatibility to old-time vi
vim.opt.compatible = false

-- Show matching parentheses and brackets
vim.opt.showmatch = true

-- Case insensitive searching
vim.opt.ignorecase = true

-- Highlight search results
vim.opt.hlsearch = true

-- Incremental search
vim.opt.incsearch = true

-- Number of columns occupied by a tab
vim.opt.tabstop = 4

-- See multiple spaces as tabstops so <BS> does the right thing
vim.opt.softtabstop = 4

-- Converts tabs to white space
vim.opt.expandtab = false

-- Width for autoindents
vim.opt.shiftwidth = 4

-- Indent a new line the same amount as the line just typed
vim.opt.autoindent = true

-- Add line numbers
vim.opt.number = true

-- Show relative line numbers
vim.opt.relativenumber = true

-- Disable all blinks (bells) in vim
vim.opt.belloff = "all"

-- Get bash-like tab completions
vim.opt.wildmode = { "longest", "list" }

-- Uncomment the following line to set an 80 column border for good coding style
-- vim.opt.colorcolumn = "80"

-- Allow auto-indenting depending on file type
vim.cmd("filetype plugin indent on")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Disabling mouse
vim.opt.mouse = ""

-- Disabling mouse scroll
vim.opt.mousescroll = "ver:0,hor:0"

-- Use system clipboard with unnamedplus
-- only unnamed not use the system clipboard
vim.opt.clipboard = "unnamed"

-- Highlight the current cursor line
vim.opt.cursorline = true

-- vim.cmd("set guicursor=")

-- Cursor blinking
vim.opt.guicursor = {
  "n-v-c:block",
  "i:ver25-blinkon1",
  "r-cr:hor20",
}

vim.api.nvim_create_augroup("Shape", { clear = true })
vim.api.nvim_create_autocmd("VimLeave", {
  group = "Shape",
  command = "set guicursor=a:ver90-blinkwait700-blinkon400-blinkoff250",
})

-- Speed up scrolling in Vim
vim.opt.ttyfast = true

-- Disable creating swap files
vim.opt.swapfile = false

-- Disable spelling
vim.opt.spell = false

vim.g.autoformat = false

vim.opt.termguicolors = true

vim.o.ve = vim.o.ve .. ",onemore"

vim.opt.fillchars = { eob = "~" }

-- Uncomment the following line to set the backup directory
-- vim.opt.backupdir = '~/.cache/vim'
