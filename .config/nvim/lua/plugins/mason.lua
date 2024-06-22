return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  opts = {
    ensure_installed = {
      "gopls",
      "clangd",
      "autoflake",
      "autopep8",
      "flake8",
      "pyright",
    },
  },
}
