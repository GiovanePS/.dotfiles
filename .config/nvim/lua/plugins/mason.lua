return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  opts = {
    ensure_installed = {
      "gopls",
      "goimports",
      "delve", -- Go debugger
      "clangd",
      "pyright",
      "ruff-lsp",
      "black",
    },
  },
}
