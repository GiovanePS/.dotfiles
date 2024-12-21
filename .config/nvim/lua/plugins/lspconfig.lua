return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            -- pyright will be automatically installed with mason and loaded with lspconfig
            clangd = {},
        },
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
