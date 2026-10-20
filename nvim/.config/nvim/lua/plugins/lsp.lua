return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "go" }, -- Disables inlay hints only for Go files
      },
      servers = {
        gopls = {
          settings = {
            gopls = {
              -- 1. Searches deep into all loaded dependencies and stdlib packages
              symbolScope = "all",
              -- 2. Tells gopls to adjust your workspace to the outermost go.mod root
              expandWorkspaceToModule = true,
              -- 3. Prevents indexing heavy directories you don't need
              directoryFilters = { "-**/node_modules", "-**/.git", "-**/pkg/mod" },
            },
          },
        },
      },
    },
  },
}
