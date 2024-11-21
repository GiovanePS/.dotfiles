-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map to Control + F delete the word forward cursor in insert mode, like Control + delete
vim.api.nvim_set_keymap("i", "<C-f>", "<Esc>ldwi", { noremap = true, silent = false })

-- Map to Control + D delete the character forward cursor in insert mode, like <Del>
vim.api.nvim_set_keymap("i", "<C-d>", "<Esc>lxa", { noremap = true, silent = false })

-- Remove keymaps to Control - F do Scroll up
vim.api.nvim_set_keymap("n", "<C-f>", "<Nop>", { noremap = true, silent = false })

-- Remove keymaps to Control- B do Scroll down
vim.api.nvim_set_keymap("n", "<C-b>", "<Nop>", { noremap = true, silent = false })
