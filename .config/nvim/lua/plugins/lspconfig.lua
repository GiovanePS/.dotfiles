return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    opts = {
        setup = {
            clangd = function(_, opts)
                require("lspconfig").clangd.setup({
                    cmd = { "clangd", "--header-insertion=never" },
                })
                return true
            end,
        },
    },
}

