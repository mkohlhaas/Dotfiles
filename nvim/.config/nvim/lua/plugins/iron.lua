return {
  "Vigemus/iron.nvim",
  keys = {
    { "<leader>is", "<cmd>IronRepl<cr>", desc = "Start REPL" },
    { "<leader>ir", "<cmd>IronRestart<cr>", desc = "Restart REPL" },
    { "<leader>if", "<cmd>IronFocus<cr>", desc = "Focus REPL" },
    { "<leader>ic", mode = { "n", "v" }, desc = "Send to REPL" },
    {
      "<leader>ib",
      function()
        require("iron.core").send_file()
      end,
      desc = "Send Buffer to REPL",
    },
  },
  config = function()
    local iron = require("iron.core")

    iron.setup({
      config = {
        scratch_repl = true,
        repl_definition = {
          python = {
            command = { "ipython", "--no-autoindent" },
          },
        },
        repl_open_cmd = require("iron.view").split.vertical("40%"),
      },
      keymaps = {
        send_line = "<leader>ic",
        visual_send = "<leader>ic",
      },
    })
  end,
}
