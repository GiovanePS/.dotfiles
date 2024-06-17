-- Disable compatibility to old-time vi
vim.opt.compatible = false

-- Show matching parentheses and brackets
vim.opt.showmatch = true

-- Case insensitive searching
vim.opt.ignorecase = true

-- Middle-click paste with mouse
vim.opt.mouse = 'v'

-- Highlight search results
vim.opt.hlsearch = true

-- Incremental search
vim.opt.incsearch = true

-- Number of columns occupied by a tab
vim.opt.tabstop = 2

-- See multiple spaces as tabstops so <BS> does the right thing
vim.opt.softtabstop = 2

-- Converts tabs to white space
vim.opt.expandtab = true

-- Width for autoindents
vim.opt.shiftwidth = 2

-- Indent a new line the same amount as the line just typed
vim.opt.autoindent = true

-- Add line numbers
vim.opt.number = true

-- Show relative line numbers
vim.opt.relativenumber = true

-- Disable all blinks (bells) in vim
vim.opt.belloff = 'all'

-- Get bash-like tab completions
vim.opt.wildmode = { 'longest', 'list' }

-- Uncomment the following line to set an 80 column border for good coding style
-- vim.opt.colorcolumn = '80'

-- Allow auto-indenting depending on file type
vim.cmd('filetype plugin indent on')

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Enable mouse click
-- vim.opt.mouse = 'a'

-- Use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Highlight the current cursor line
vim.opt.cursorline = true

-- Speed up scrolling in Vim
vim.opt.ttyfast = true

-- Uncomment the following lines to enable spell check and disable creating swap files
-- vim.opt.spell = true
-- vim.opt.swapfile = false

-- Uncomment the following line to set the backup directory
-- vim.opt.backupdir = '~/.cache/vim'


-- Check if running in VSCode
if vim.g.vscode then
  -- VSCode extension specific settings
else
  -- Ordinary Neovim settings
end

