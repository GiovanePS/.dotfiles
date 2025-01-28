return {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
        local icons = LazyVim.config.icons
        opts.sections.lualine_c = {
            LazyVim.lualine.root_dir(),
            {
                "diagnostics",
                symbols = {
                    error = icons.diagnostics.Error,
                    warn = icons.diagnostics.Warn,
                    info = icons.diagnostics.Info,
                    hint = icons.diagnostics.Hint,
                },
            },
        }
		table.insert(opts.sections.lualine_x, 'searchcount')
        opts.sections.lualine_z = {
            function()
                return " "
            end,
        }
    end,
}
