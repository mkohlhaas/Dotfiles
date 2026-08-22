return {
  {
    "saghen/blink.cmp",
    dependencies = { "moyiz/blink-emoji.nvim" },
    opts = {
      sources = {
        -- Add 'emoji' to the default list of completion providers
        default = { "lsp", "path", "snippets", "buffer", "emoji" },
        providers = {
          emoji = {
            module = "blink-emoji",
            name = "Emoji",
            score_offset = 15, -- Prioritize emojis appropriately in the menu
            opts = { insert = true }, -- Inserts the glyph directly instead of text
          },
        },
      },
    },
  },
}
