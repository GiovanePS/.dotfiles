return {
    {
        "lewis6991/gitsigns.nvim",
        opts = function(_, opts)
            -- Merge your custom configuration with the default
            opts.current_line_blame = true
            opts.current_line_blame_opts = { delay = 300 }

            -- Set custom highlights for GitSigns
			if vim.g.colors_name == "gruvbox" then
				return
			end
            vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00ff00", bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffff00", bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff0000", bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsAddNr", { fg = "#00ff00", bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsChangeNr", { fg = "#ffff00", bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { fg = "#ff0000", bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsAddLn", { bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsChangeLn", { bg = "none" })
            vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { bg = "none" })
        end,
    },
}
