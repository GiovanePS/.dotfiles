-- Nvim Tree
-- Map to <Tab>
vim.api.nvim_set_keymap("n", "<Tab>", ":Neotree toggle <CR>", { noremap = true, silent = true })

-- Map \ + w to Close Buffer (Close window)
vim.api.nvim_set_keymap("n", "<localleader>w", ":bdelete <CR>", { noremap = true, silent = true })

-- Map to Control + F delete the word forward in insert mode, like Control + delete
vim.api.nvim_set_keymap("i", "<C-f>", "<Esc>dwa", { noremap = true, silent = false })
