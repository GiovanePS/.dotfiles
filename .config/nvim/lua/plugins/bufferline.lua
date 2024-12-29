return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        opts = function(_, opts)
            -- Merge custom options with the default ones
            opts.options = opts.options or {}
            opts.options.always_show_bufferline = true
            opts.options.show_buffer_close_icons = false
            opts.options.show_close_icon = false
            opts.options.diagnostics = "nvim_lsp"
            opts.options.diagnostics_indicator = function(count, level)
                local icon = level:match("error") and " " or " "
                return " " .. icon .. count
            end

            -- Merge custom highlights
			if vim.g.colors_name ~= "monokai" then
				return
			end
            opts.highlights = vim.tbl_deep_extend("force", opts.highlights or {}, {
                fill = {
                    fg = "none",
                    bg = "none",
                },
                background = {
                    bg = "none",
                },
                separator = {
                    bg = "none",
                },
                modified = {
                    bg = "none",
                },
                tab = {
                    fg = "#FF0000",
                },
                warning = {
                    fg = "#B3B300",
                    bg = "none",
                    sp = "none",
                },
                warning_visible = {
                    fg = "#B3B300",
                },
                warning_selected = {
                    fg = "#FFFF00",
                },
                warning_diagnostic = {
                    fg = "#B3B300",
                    bg = "none",
                    sp = "none",
                },
                warning_diagnostic_visible = {
                    fg = "#B3B300",
                },
                warning_diagnostic_selected = {
                    fg = "#FFFF00",
                },
                error = {
                    fg = "#C30000",
                    bg = "none",
                    sp = "none",
                },
                error_visible = {
                    fg = "#C30000",
                },
                error_selected = {
                    fg = "#FF0000",
                },
                error_diagnostic = {
                    fg = "#C30000",
                    bg = "none",
                    sp = "none",
                },
                error_diagnostic_visible = {
                    fg = "#C30000",
                },
                error_diagnostic_selected = {
                    fg = "#FF0000",
                },
            })
        end,
    },
}
