return {
  {
    "wintermute-cell/gitignore.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("gitignore")
    end,
    keys = {
      { "<leader>gn", "<cmd>Gitignore<cr>", desc = "Generate Gitignore" },
    },
  },
}
