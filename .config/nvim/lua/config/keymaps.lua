-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map to Control + F delete the word forward cursor in insert mode, like Control + delete
vim.api.nvim_set_keymap("i", "<C-f>", "<Esc>ldwi", { noremap = true, silent = false })

-- Map to Control + D delete the character forward cursor in insert mode, like <Del>
vim.api.nvim_set_keymap("i", "<C-d>", "<Esc>lxa", { noremap = true, silent = false })

-- Map to Leader+y copy to clipboard
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
