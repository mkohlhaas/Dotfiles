return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["j"] = { "jzz" },
          ["k"] = { "kzz" },
          ["n"] = { "nzz" },
          ["N"] = { "Nzz" },
          ["G"] = { "Gzz" },
          ["<A-j>"] = { "<cmd>bn<cr>", desc = "buffer next" },
          ["<A-k>"] = { "<cmd>bp<cr>", desc = "buffer previous" },
        },
      },
    },
  },
}
