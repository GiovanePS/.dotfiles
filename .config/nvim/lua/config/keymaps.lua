-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map to Control + F delete the word forward cursor in insert mode, like Control + delete
vim.keymap.set("i", "<C-f>", function()
    local _, column = unpack(vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win()))
    if column == 0 then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>dwi", true, false, true), "n", true)
        return
    end

    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>ldwi", true, false, true), "n", true)
end, { noremap = true, silent = false })

-- Map to Control + D delete the character forward cursor in insert mode, like <Del>
vim.keymap.set("i", "<C-d>", function()
    local _, column = unpack(vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win()))
    if column == 0 then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>xi", true, false, true), "n", true)
        return
    end

    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>lxi", true, false, true), "n", true)
end, { noremap = true, silent = false })

-- Map to Leader+y copy to clipboard
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
