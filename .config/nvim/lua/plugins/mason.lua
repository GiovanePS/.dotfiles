return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  opts = {
    ensure_installed = {
      "gopls",
      "clangd",
      "pyright",
      "ruff-lsp",
      "black",
    },
  },
}
