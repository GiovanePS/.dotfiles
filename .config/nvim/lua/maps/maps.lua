-- Nvim Tree

-- Map \ + w to Close Buffer (Close window)
vim.api.nvim_set_keymap("n", "<localleader>w", ":bdelete <CR>", { noremap = true, silent = true })

-- Map to Control + F delete the word forward cursor in insert mode, like Control + delete
vim.api.nvim_set_keymap("i", "<C-f>", "<Esc>ldwi", { noremap = true, silent = false })

-- Map to Control + D delete the character forward cursor in insert mode, like <Del>
vim.api.nvim_set_keymap("i", "<C-d>", "<Esc>lxa", { noremap = true, silent = false })

-- Remove keymaps to Control - F do Scroll up
vim.api.nvim_set_keymap("n", "<C-f>", "<Nop>", { noremap = true, silent = false })

-- Remove keymaps to Control- B do Scroll down
vim.api.nvim_set_keymap("n", "<C-b>", "<Nop>", { noremap = true, silent = false })
