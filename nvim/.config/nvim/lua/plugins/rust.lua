if false then
  return {}
end

return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Make sure to match the major version used by LazyVim
    lazy = false, -- This plugin is already lazy-loaded by the extra
    opts = {
      server = {
        default_settings = {
          -- Options documentation: https://github.io
          ["rust-analyzer"] = {
            cargo = {
              -- Separates Neovim's artifacts from trunk's targets
              targetDir = "target/analyzer",
              allFeatures = true,
              loadOutDirsFromCheck = true,
            },
            -- Example: Enable or customize clippy instead of cargo check
            checkOnSave = {
              command = "clippy",
            },
            procMacro = {
              enable = true,
              ignored = {
                leptos_macro = {
                  "server",
                  -- optional: --
                  -- "component",
                },
              },
            },
          },
        },
      },
    },
  },
}
