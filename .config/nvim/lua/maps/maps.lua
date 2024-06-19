-- Nvim Tree
-- Map to <Tab>
vim.api.nvim_set_keymap("n", "<Tab>", ":Neotree position=float toggle <CR>", { noremap = true, silent = true })

-- Map \ + w to Close Buffer (Close window)
vim.api.nvim_set_keymap("n", "<localleader>w", ":bdelete <CR>", { noremap = true, silent = true })
