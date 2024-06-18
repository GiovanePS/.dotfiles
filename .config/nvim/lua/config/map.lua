-- Map <Tab> to the save_and_next function
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext <CR>', { noremap = true, silent = true })

-- Map <S-Tab> to the save_and_previous function
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious <CR>', { noremap = true, silent = true })
