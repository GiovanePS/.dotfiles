-- Bufferline
-- Map Tab to the save_and_next function
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext <CR>", { noremap = true, silent = true })

-- Map Shift + Tab to the save_and_previous function
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious <CR>", { noremap = true, silent = true })

-- Nvim Tree
-- Map Control + Tab to Toggle NvimTree
vim.api.nvim_set_keymap("n", "<C-Tab>", ":Neotree toggle <CR>", { noremap = true, silent = true })

-- Map \ + w to Close Buffer (Close window)
vim.api.nvim_set_keymap("n", "<localleader>w", ":bdelete <CR>", { noremap = true, silent = true })
