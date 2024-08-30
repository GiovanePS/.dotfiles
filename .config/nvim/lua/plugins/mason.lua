return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  opts = {
    ensure_installed = {
      "gopls",
      "goimports",
      "clangd",
      "pyright",
      "ruff-lsp",
      "black",
      "powershell-editor-services",
      "nomicfoundation-solidity-language-server",
      "latexindent",
      "texlab",
      "typescript-language-server",
    },
  },
}
