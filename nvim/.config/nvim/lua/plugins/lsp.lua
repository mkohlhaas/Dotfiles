return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "go" }, -- Disables inlay hints only for Go files
      },
    },
  },
}
